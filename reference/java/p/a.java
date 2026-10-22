package p;

import android.os.SystemClock;
import android.view.Choreographer;
import b.j;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f504a;

    public a(b bVar) {
        this.f504a = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:17:0x0055  */
    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:26:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:29:0x010e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x002b  */
    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        ArrayList arrayList;
        long j2;
        long j3;
        float f2;
        float f3;
        g gVar;
        boolean z2;
        l.e eVar = (l.e) this.f504a.f505a;
        eVar.getClass();
        long jUptimeMillis = SystemClock.uptimeMillis();
        c cVar = (c) eVar.f499a;
        cVar.getClass();
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        int i2 = 0;
        while (true) {
            arrayList = cVar.f510b;
            if (i2 >= arrayList.size()) {
                break;
            }
            f fVar = (f) arrayList.get(i2);
            if (fVar == null) {
                i2 = i2;
            } else {
                j jVar = cVar.f509a;
                Long l2 = (Long) jVar.get(fVar);
                if (l2 == null) {
                    j2 = fVar.f530f;
                    if (j2 == 0) {
                        fVar.f530f = jUptimeMillis;
                        fVar.c(fVar.f526b);
                        i2 = i2;
                    } else {
                        j3 = jUptimeMillis - j2;
                        fVar.f530f = jUptimeMillis;
                        if (fVar.f534k != Float.MAX_VALUE) {
                            g gVar2 = fVar.j;
                            double d2 = gVar2.f543i;
                            long j4 = j3 / 2;
                            e eVarA = gVar2.a(fVar.f526b, fVar.f525a, j4);
                            g gVar3 = fVar.j;
                            gVar3.f543i = fVar.f534k;
                            fVar.f534k = Float.MAX_VALUE;
                            e eVarA2 = gVar3.a(eVarA.f515a, eVarA.f516b, j4);
                            fVar.f526b = eVarA2.f515a;
                            fVar.f525a = eVarA2.f516b;
                            f2 = Float.MAX_VALUE;
                        } else {
                            f2 = Float.MAX_VALUE;
                            e eVarA3 = fVar.j.a(fVar.f526b, fVar.f525a, j3);
                            fVar.f526b = eVarA3.f515a;
                            fVar.f525a = eVarA3.f516b;
                        }
                        float fMax = Math.max(fVar.f526b, -3.4028235E38f);
                        fVar.f526b = fMax;
                        float fMin = Math.min(fMax, f2);
                        fVar.f526b = fMin;
                        f3 = fVar.f525a;
                        gVar = fVar.j;
                        gVar.getClass();
                        if (Math.abs(f3) < gVar.f539e) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        float fMin2 = Math.min(fVar.f526b, f2);
                        fVar.f526b = fMin2;
                        float fMax2 = Math.max(fMin2, -3.4028235E38f);
                        fVar.f526b = fMax2;
                        fVar.c(fMax2);
                        if (z2) {
                            fVar.b();
                        }
                    }
                } else if (l2.longValue() < jUptimeMillis2) {
                    jVar.remove(fVar);
                    j2 = fVar.f530f;
                    if (j2 == 0) {
                        fVar.f530f = jUptimeMillis;
                        fVar.c(fVar.f526b);
                        i2 = i2;
                    } else {
                        j3 = jUptimeMillis - j2;
                        fVar.f530f = jUptimeMillis;
                        if (fVar.f534k != Float.MAX_VALUE) {
                            g gVar4 = fVar.j;
                            double d3 = gVar4.f543i;
                            long j5 = j3 / 2;
                            e eVarA4 = gVar4.a(fVar.f526b, fVar.f525a, j5);
                            g gVar5 = fVar.j;
                            gVar5.f543i = fVar.f534k;
                            fVar.f534k = Float.MAX_VALUE;
                            e eVarA5 = gVar5.a(eVarA4.f515a, eVarA4.f516b, j5);
                            fVar.f526b = eVarA5.f515a;
                            fVar.f525a = eVarA5.f516b;
                            f2 = Float.MAX_VALUE;
                        } else {
                            f2 = Float.MAX_VALUE;
                            e eVarA6 = fVar.j.a(fVar.f526b, fVar.f525a, j3);
                            fVar.f526b = eVarA6.f515a;
                            fVar.f525a = eVarA6.f516b;
                        }
                        float fMax3 = Math.max(fVar.f526b, -3.4028235E38f);
                        fVar.f526b = fMax3;
                        float fMin3 = Math.min(fMax3, f2);
                        fVar.f526b = fMin3;
                        f3 = fVar.f525a;
                        gVar = fVar.j;
                        gVar.getClass();
                        if (Math.abs(f3) < gVar.f539e || Math.abs(fMin3 - ((float) gVar.f543i)) >= gVar.f538d) {
                            z2 = false;
                        } else {
                            fVar.f526b = (float) fVar.j.f543i;
                            fVar.f525a = 0.0f;
                            z2 = true;
                        }
                        float fMin4 = Math.min(fVar.f526b, f2);
                        fVar.f526b = fMin4;
                        float fMax4 = Math.max(fMin4, -3.4028235E38f);
                        fVar.f526b = fMax4;
                        fVar.c(fMax4);
                        if (z2) {
                            fVar.b();
                        }
                    }
                } else {
                    i2 = i2;
                }
            }
            i2++;
        }
        if (cVar.f513e) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == null) {
                    arrayList.remove(size);
                }
            }
            cVar.f513e = false;
        }
        if (arrayList.size() > 0) {
            if (cVar.f512d == null) {
                cVar.f512d = new b(cVar.f511c);
            }
            b bVar = cVar.f512d;
            ((Choreographer) bVar.f506b).postFrameCallback((a) bVar.f507c);
        }
    }
}
