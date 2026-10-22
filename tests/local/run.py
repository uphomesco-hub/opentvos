#!/usr/bin/env python3
"""Run local-status and preserved-native-theme host checks without assembling an APK."""
import os
from pathlib import Path
import shutil
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[2]
JAVAC = shutil.which("javac")
JAVA = shutil.which("java")
configured = os.environ.get("JAVA_HOME")
if configured:
    JAVAC = str(Path(configured) / "bin/javac")
    JAVA = str(Path(configured) / "bin/java")
if not JAVAC or not JAVA:
    raise SystemExit("Java 8+ JDK required; set JAVA_HOME")

def run_test(sources, main_class):
    with tempfile.TemporaryDirectory(prefix="tvos-local-test-") as output:
        subprocess.run([JAVAC, "-source", "8", "-target", "8", "-d", output] + [str(p) for p in sources], check=True)
        subprocess.run([JAVA, "-cp", output, main_class], check=True)

run_test([
    ROOT / "src/com/sid/tvos/IndianAqi.java",
    ROOT / "src/com/sid/tvos/LocalStatusPolicy.java",
    ROOT / "tests/local/LocalPolicyTest.java",
], "com.sid.tvos.LocalPolicyTest")
run_test(list((ROOT / "tests/local/native-theme").rglob("*.java")) + [
    ROOT / "tests/local/NativeThemeTest.java",
], "com.sid.tvos.NativeThemeTest")
