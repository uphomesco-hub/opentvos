#!/usr/bin/env python3
"""Check visible vector artwork, not just the ImageView box. Needs fonttools for SVG path bounds."""
from pathlib import Path
import xml.etree.ElementTree as ET
from fontTools.pens.boundsPen import BoundsPen
from fontTools.svgLib.path import parse_path

ANDROID = '{http://schemas.android.com/apk/res/android}'
drawables = Path(__file__).resolve().parents[1] / 'app/res/drawable'
files = sorted(drawables.glob('hybrid_ic_*.xml'))
assert len(files) == 10
for file in files:
    root = ET.parse(file).getroot()
    bounds = []
    for node in root.iter('path'):
        pen = BoundsPen(None)
        parse_path(node.get(ANDROID + 'pathData'), pen)
        if pen.bounds:
            x0, y0, x1, y1 = pen.bounds
            half_stroke = float(node.get(ANDROID + 'strokeWidth', '0')) / 2
            bounds.append((x0-half_stroke, y0-half_stroke, x1+half_stroke, y1+half_stroke))
    dx = sum(float(group.get(ANDROID + 'translateX', '0')) for group in root.iter('group'))
    dy = sum(float(group.get(ANDROID + 'translateY', '0')) for group in root.iter('group'))
    cx = (min(b[0] for b in bounds) + max(b[2] for b in bounds)) / 2 + dx
    cy = (min(b[1] for b in bounds) + max(b[3] for b in bounds)) / 2 + dy
    width = float(root.get(ANDROID + 'viewportWidth'))
    height = float(root.get(ANDROID + 'viewportHeight'))
    assert abs(cx-width/2) < .01 and abs(cy-height/2) < .01, (file.name, cx, cy)
print('10 control icon artwork bounds are centred')
