package r;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b.j f713a = new b.j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b.d f714b;

    public o0() {
        int i2;
        b.d dVar = new b.d();
        dVar.f106a = false;
        int i3 = 4;
        while (true) {
            i2 = 80;
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (80 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 8;
        dVar.f107b = new long[i5];
        dVar.f108c = new Object[i5];
        dVar.f109d = 0;
        this.f714b = dVar;
    }

    public final void a(long j, androidx.recyclerview.widget.o oVar) {
        b.d dVar = this.f714b;
        int iA = b.c.a(dVar.f107b, dVar.f109d, j);
        if (iA >= 0) {
            dVar.f108c[iA] = oVar;
            return;
        }
        int i2 = ~iA;
        int i3 = dVar.f109d;
        if (i2 < i3) {
            Object[] objArr = dVar.f108c;
            if (objArr[i2] == b.d.f105e) {
                dVar.f107b[i2] = j;
                objArr[i2] = oVar;
                return;
            }
        }
        if (dVar.f106a && i3 >= dVar.f107b.length) {
            dVar.a();
            i2 = ~b.c.a(dVar.f107b, dVar.f109d, j);
        }
        int i4 = dVar.f109d;
        if (i4 >= dVar.f107b.length) {
            int i5 = (i4 + 1) * 8;
            for (int i6 = 4; i6 < 32; i6++) {
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
            }
            int i8 = i5 / 8;
            long[] jArr = new long[i8];
            Object[] objArr2 = new Object[i8];
            long[] jArr2 = dVar.f107b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = dVar.f108c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            dVar.f107b = jArr;
            dVar.f108c = objArr2;
        }
        int i9 = dVar.f109d - i2;
        if (i9 != 0) {
            long[] jArr3 = dVar.f107b;
            int i10 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i10, i9);
            Object[] objArr4 = dVar.f108c;
            System.arraycopy(objArr4, i2, objArr4, i10, dVar.f109d - i2);
        }
        dVar.f107b[i2] = j;
        dVar.f108c[i2] = oVar;
        dVar.f109d++;
    }

    public final void b(androidx.recyclerview.widget.o oVar, I i2) {
        b.j jVar = this.f713a;
        m0 m0VarA = (m0) jVar.get(oVar);
        if (m0VarA == null) {
            m0VarA = m0.a();
            jVar.put(oVar, m0VarA);
        }
        m0VarA.f682c = i2;
        m0VarA.f680a |= 8;
    }

    public final I c(androidx.recyclerview.widget.o oVar, int i2) {
        m0 m0Var;
        I i3;
        b.j jVar = this.f713a;
        int iE = jVar.e(oVar);
        if (iE >= 0 && (m0Var = (m0) jVar.f131b[(iE << 1) + 1]) != null) {
            int i4 = m0Var.f680a;
            if ((i4 & i2) != 0) {
                int i5 = i4 & (~i2);
                m0Var.f680a = i5;
                if (i2 == 4) {
                    i3 = m0Var.f681b;
                } else {
                    if (i2 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    i3 = m0Var.f682c;
                }
                if ((i5 & 12) == 0) {
                    jVar.h(iE);
                    m0Var.f680a = 0;
                    m0Var.f681b = null;
                    m0Var.f682c = null;
                    m0.f679d.b(m0Var);
                }
                return i3;
            }
        }
        return null;
    }

    public final void d(androidx.recyclerview.widget.o oVar) {
        m0 m0Var = (m0) this.f713a.get(oVar);
        if (m0Var == null) {
            return;
        }
        m0Var.f680a &= -2;
    }

    public final void e(androidx.recyclerview.widget.o oVar) {
        b.d dVar = this.f714b;
        if (dVar.f106a) {
            dVar.a();
        }
        for (int i2 = dVar.f109d - 1; i2 >= 0; i2--) {
            if (dVar.f106a) {
                dVar.a();
            }
            Object[] objArr = dVar.f108c;
            Object obj = objArr[i2];
            if (oVar == obj) {
                Object obj2 = b.d.f105e;
                if (obj == obj2) {
                    break;
                }
                objArr[i2] = obj2;
                dVar.f106a = true;
                break;
            }
        }
        m0 m0Var = (m0) this.f713a.remove(oVar);
        if (m0Var != null) {
            m0Var.f680a = 0;
            m0Var.f681b = null;
            m0Var.f682c = null;
            m0.f679d.b(m0Var);
        }
    }
}
