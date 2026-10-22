package com.sid.tvos;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class DockDecoration extends r.J {
    private final float density;
    private final int dockSize;
    private boolean liquid;
    private final RectF rect;
    private final Paint rim;
    private final Path shape;
    private final RectF shapeBox;
    private float shapeW;
    private float sheenHeight;
    private float sheenTop;
    private final Paint band = new Paint(1);
    private final Paint sheen = new Paint(1);

    public DockDecoration(int i2, float f2) {
        Paint paint = new Paint(1);
        this.rim = paint;
        this.rect = new RectF();
        this.shape = new Path();
        this.shapeBox = new RectF();
        this.sheenTop = Float.NaN;
        this.liquid = true;
        this.dockSize = i2;
        this.density = f2;
        setLiquid(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f2 * 1.5f);
    }

    @Override // r.J
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, r.Y y2) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition < 0 || childAdapterPosition >= this.dockSize) {
            return;
        }
        float f2 = this.density;
        rect.top = (int) (6.0f * f2);
        rect.bottom = (int) (f2 * 20.0f);
    }

    @Override // r.J
    public void onDraw(Canvas canvas, RecyclerView recyclerView, r.Y y2) {
        View viewFindViewById;
        boolean z2 = false;
        for (int i2 = 0; i2 < recyclerView.getChildCount(); i2++) {
            View childAt = recyclerView.getChildAt(i2);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0 && childAdapterPosition < this.dockSize && (viewFindViewById = childAt.findViewById(R.id.card)) != null) {
                float left = viewFindViewById.getLeft() + childAt.getLeft();
                float translationY = childAt.getTranslationY() + viewFindViewById.getTop() + childAt.getTop();
                float width = viewFindViewById.getWidth() + left;
                float height = viewFindViewById.getHeight() + translationY;
                if (z2) {
                    this.rect.union(left, translationY, width, height);
                } else {
                    this.rect.set(left, translationY, width, height);
                    z2 = true;
                }
            }
        }
        if (z2) {
            this.rect.inset(-Math.max(0.0f, Math.min(this.density * 9.0f, Math.min(this.rect.left, recyclerView.getWidth() - this.rect.right))), this.density * (-12.0f));
            float fWidth = this.rect.width();
            float fHeight = this.rect.height();
            if (fWidth != this.shapeW || fHeight != this.sheenHeight || Float.isNaN(this.sheenTop)) {
                this.shapeW = fWidth;
                this.sheenHeight = fHeight;
                this.sheenTop = 0.0f;
                this.shapeBox.set(0.0f, 0.0f, fWidth, fHeight);
                Corners.squircle(this.shape, this.shapeBox, this.density * 26.0f);
                Paint paint = this.sheen;
                int[] iArr = this.liquid ? new int[]{788529151, 100663295, 16777215, 352321535} : new int[]{1090519039, 452984831, 234881023, 452984831};
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, fHeight, iArr, new float[]{0.0f, 0.35f, 0.7f, 1.0f}, tileMode));
                this.rim.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, fHeight, this.liquid ? new int[]{-1275068417, 452984831, 452984831, -2130706433} : new int[]{-2130706433, 872415231, 872415231, 1509949439}, new float[]{0.0f, 0.25f, 0.75f, 1.0f}, tileMode));
            }
            int iSave = canvas.save();
            RectF rectF = this.rect;
            canvas.translate(rectF.left, rectF.top);
            canvas.drawPath(this.shape, this.band);
            canvas.drawPath(this.shape, this.sheen);
            canvas.drawPath(this.shape, this.rim);
            canvas.restoreToCount(iSave);
        }
    }

    public void setLiquid(boolean z2) {
        this.liquid = z2;
        this.band.setColor(z2 ? 638586898 : 1207959551);
        this.sheenTop = Float.NaN;
    }
}
