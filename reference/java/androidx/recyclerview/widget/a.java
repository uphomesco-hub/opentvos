package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;
import r.C0035a;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f40d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i.e f37a = new i.e(30, 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f38b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f39c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f42f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l.e f41e = new l.e(this);

    public a(f fVar) {
        this.f40d = fVar;
    }

    public final boolean a(int i2) {
        ArrayList arrayList = this.f39c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0035a c0035a = (C0035a) arrayList.get(i3);
            int i4 = c0035a.f585a;
            if (i4 == 8) {
                if (f(c0035a.f588d, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = c0035a.f586b;
                int i6 = c0035a.f588d + i5;
                while (i5 < i6) {
                    if (f(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f39c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f40d.a((C0035a) arrayList.get(i2));
        }
        l(arrayList);
        this.f42f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f38b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0035a c0035a = (C0035a) arrayList.get(i2);
            int i3 = c0035a.f585a;
            f fVar = this.f40d;
            if (i3 == 1) {
                fVar.a(c0035a);
                int i4 = c0035a.f586b;
                int i5 = c0035a.f588d;
                RecyclerView recyclerView = fVar.f60a;
                recyclerView.offsetPositionRecordsForInsert(i4, i5);
                recyclerView.mItemsAddedOrRemoved = true;
            } else if (i3 == 2) {
                fVar.a(c0035a);
                int i6 = c0035a.f586b;
                int i7 = c0035a.f588d;
                RecyclerView recyclerView2 = fVar.f60a;
                recyclerView2.offsetPositionRecordsForRemove(i6, i7, true);
                recyclerView2.mItemsAddedOrRemoved = true;
                recyclerView2.mState.f574c += i7;
            } else if (i3 == 4) {
                fVar.a(c0035a);
                int i8 = c0035a.f586b;
                int i9 = c0035a.f588d;
                Object obj = c0035a.f587c;
                RecyclerView recyclerView3 = fVar.f60a;
                recyclerView3.viewRangeUpdate(i8, i9, obj);
                recyclerView3.mItemsChanged = true;
            } else if (i3 == 8) {
                fVar.a(c0035a);
                int i10 = c0035a.f586b;
                int i11 = c0035a.f588d;
                RecyclerView recyclerView4 = fVar.f60a;
                recyclerView4.offsetPositionRecordsForMove(i10, i11);
                recyclerView4.mItemsAddedOrRemoved = true;
            }
        }
        l(arrayList);
        this.f42f = 0;
    }

    public final void d(C0035a c0035a) {
        int i2;
        int i3 = c0035a.f585a;
        if (i3 == 1 || i3 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iM = m(c0035a.f586b, i3);
        int i4 = c0035a.f586b;
        int i5 = c0035a.f585a;
        if (i5 == 2) {
            i2 = 0;
        } else {
            if (i5 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0035a);
            }
            i2 = 1;
        }
        int i6 = 1;
        for (int i7 = 1; i7 < c0035a.f588d; i7++) {
            int iM2 = m((i2 * i7) + c0035a.f586b, c0035a.f585a);
            int i8 = c0035a.f585a;
            if (i8 == 2 ? iM2 != iM : !(i8 == 4 && iM2 == iM + 1)) {
                C0035a c0035aH = h(i8, iM, i6, c0035a.f587c);
                e(c0035aH, i4);
                c0035aH.f587c = null;
                this.f37a.b(c0035aH);
                if (c0035a.f585a == 4) {
                    i4 += i6;
                }
                iM = iM2;
                i6 = 1;
            } else {
                i6++;
            }
        }
        Object obj = c0035a.f587c;
        c0035a.f587c = null;
        this.f37a.b(c0035a);
        if (i6 > 0) {
            C0035a c0035aH2 = h(c0035a.f585a, iM, i6, obj);
            e(c0035aH2, i4);
            c0035aH2.f587c = null;
            this.f37a.b(c0035aH2);
        }
    }

    public final void e(C0035a c0035a, int i2) {
        f fVar = this.f40d;
        fVar.a(c0035a);
        int i3 = c0035a.f585a;
        RecyclerView recyclerView = fVar.f60a;
        if (i3 != 2) {
            if (i3 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            recyclerView.viewRangeUpdate(i2, c0035a.f588d, c0035a.f587c);
            recyclerView.mItemsChanged = true;
            return;
        }
        int i4 = c0035a.f588d;
        recyclerView.offsetPositionRecordsForRemove(i2, i4, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.f574c += i4;
    }

    public final int f(int i2, int i3) {
        ArrayList arrayList = this.f39c;
        int size = arrayList.size();
        while (i3 < size) {
            C0035a c0035a = (C0035a) arrayList.get(i3);
            int i4 = c0035a.f585a;
            if (i4 == 8) {
                int i5 = c0035a.f586b;
                if (i5 == i2) {
                    i2 = c0035a.f588d;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (c0035a.f588d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = c0035a.f586b;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = c0035a.f588d;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += c0035a.f588d;
                }
            }
            i3++;
        }
        return i2;
    }

    public final boolean g() {
        return this.f38b.size() > 0;
    }

    public final C0035a h(int i2, int i3, int i4, Object obj) {
        C0035a c0035a = (C0035a) this.f37a.a();
        if (c0035a != null) {
            c0035a.f585a = i2;
            c0035a.f586b = i3;
            c0035a.f588d = i4;
            c0035a.f587c = obj;
            return c0035a;
        }
        C0035a c0035a2 = new C0035a();
        c0035a2.f585a = i2;
        c0035a2.f586b = i3;
        c0035a2.f588d = i4;
        c0035a2.f587c = obj;
        return c0035a2;
    }

    public final void i(C0035a c0035a) {
        this.f39c.add(c0035a);
        int i2 = c0035a.f585a;
        f fVar = this.f40d;
        if (i2 == 1) {
            int i3 = c0035a.f586b;
            int i4 = c0035a.f588d;
            RecyclerView recyclerView = fVar.f60a;
            recyclerView.offsetPositionRecordsForInsert(i3, i4);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i2 == 2) {
            int i5 = c0035a.f586b;
            int i6 = c0035a.f588d;
            RecyclerView recyclerView2 = fVar.f60a;
            recyclerView2.offsetPositionRecordsForRemove(i5, i6, false);
            recyclerView2.mItemsAddedOrRemoved = true;
            return;
        }
        if (i2 == 4) {
            int i7 = c0035a.f586b;
            int i8 = c0035a.f588d;
            Object obj = c0035a.f587c;
            RecyclerView recyclerView3 = fVar.f60a;
            recyclerView3.viewRangeUpdate(i7, i8, obj);
            recyclerView3.mItemsChanged = true;
            return;
        }
        if (i2 != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + c0035a);
        }
        int i9 = c0035a.f586b;
        int i10 = c0035a.f588d;
        RecyclerView recyclerView4 = fVar.f60a;
        recyclerView4.offsetPositionRecordsForMove(i9, i10);
        recyclerView4.mItemsAddedOrRemoved = true;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x018d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0191  */
    /* JADX WARN: Code duplicated, block: B:184:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x006b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:37:0x008c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0090  */
    /* JADX WARN: Code duplicated, block: B:40:0x009f  */
    /* JADX WARN: Code duplicated, block: B:76:0x012b  */
    /* JADX WARN: Code duplicated, block: B:77:0x012d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0133  */
    /* JADX WARN: Code duplicated, block: B:82:0x013e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0149  */
    /* JADX WARN: Code duplicated, block: B:88:0x0154 A[PHI: r5
      0x0154: PHI (r5v30 int) = (r5v23 int), (r5v33 int) binds: [B:100:0x0181, B:87:0x0152] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:89:0x015a  */
    /* JADX WARN: Code duplicated, block: B:90:0x015c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0162  */
    /* JADX WARN: Code duplicated, block: B:95:0x016d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0178  */
    public final void j() {
        byte b2;
        boolean z2;
        byte b3;
        C0035a c0035aH;
        int i2;
        int i3;
        int i4;
        C0035a c0035aH2;
        boolean z3;
        boolean z4;
        C0035a c0035aH3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        ArrayList arrayList = this.f38b;
        l.e eVar = this.f41e;
        eVar.getClass();
        while (true) {
            int size = arrayList.size() - 1;
            boolean z5 = false;
            while (true) {
                b2 = -1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((C0035a) arrayList.get(size)).f585a != 8) {
                    z5 = true;
                } else if (z5) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i12 = size + 1;
            C0035a c0035a = (C0035a) arrayList.get(size);
            C0035a c0035a2 = (C0035a) arrayList.get(i12);
            int i13 = c0035a2.f585a;
            if (i13 != 1) {
                a aVar = (a) eVar.f499a;
                if (i13 == 2) {
                    int i14 = c0035a.f586b;
                    int i15 = c0035a.f588d;
                    int i16 = c0035a2.f586b;
                    if (i14 < i15) {
                        z3 = i16 == i14 && c0035a2.f588d == i15 - i14;
                        z4 = false;
                    } else {
                        z3 = i16 == i15 + 1 && c0035a2.f588d == i14 - i15;
                        z4 = true;
                    }
                    int i17 = c0035a2.f586b;
                    if (i15 < i17) {
                        c0035a2.f586b = i17 - 1;
                    } else {
                        int i18 = c0035a2.f588d;
                        if (i15 < i17 + i18) {
                            c0035a2.f588d = i18 - 1;
                            c0035a.f585a = 2;
                            c0035a.f588d = 1;
                            if (c0035a2.f588d == 0) {
                                arrayList.remove(i12);
                                aVar.getClass();
                                c0035a2.f587c = null;
                                aVar.f37a.b(c0035a2);
                            }
                        }
                    }
                    int i19 = c0035a.f586b;
                    int i20 = c0035a2.f586b;
                    if (i19 <= i20) {
                        c0035a2.f586b = i20 + 1;
                    } else {
                        int i21 = i20 + c0035a2.f588d;
                        if (i19 < i21) {
                            c0035aH3 = aVar.h(2, i19 + 1, i21 - i19, null);
                            c0035a2.f588d = c0035a.f586b - c0035a2.f586b;
                        }
                        if (z3) {
                            arrayList.set(size, c0035a2);
                            arrayList.remove(i12);
                            aVar.getClass();
                            c0035a.f587c = null;
                            aVar.f37a.b(c0035a);
                        } else {
                            if (z4) {
                                if (c0035aH3 != null) {
                                    i10 = c0035a.f586b;
                                    if (i10 > c0035aH3.f586b) {
                                        c0035a.f586b = i10 - c0035aH3.f588d;
                                    }
                                    i11 = c0035a.f588d;
                                    if (i11 > c0035aH3.f586b) {
                                        c0035a.f588d = i11 - c0035aH3.f588d;
                                    }
                                }
                                i9 = c0035a.f586b;
                                if (i9 > c0035a2.f586b) {
                                    c0035a.f586b = i9 - c0035a2.f588d;
                                }
                                i6 = c0035a.f588d;
                                if (i6 > c0035a2.f586b) {
                                    c0035a.f588d = i6 - c0035a2.f588d;
                                }
                            } else {
                                if (c0035aH3 != null) {
                                    i7 = c0035a.f586b;
                                    if (i7 >= c0035aH3.f586b) {
                                        c0035a.f586b = i7 - c0035aH3.f588d;
                                    }
                                    i8 = c0035a.f588d;
                                    if (i8 >= c0035aH3.f586b) {
                                        c0035a.f588d = i8 - c0035aH3.f588d;
                                    }
                                }
                                i5 = c0035a.f586b;
                                if (i5 >= c0035a2.f586b) {
                                    c0035a.f586b = i5 - c0035a2.f588d;
                                }
                                i6 = c0035a.f588d;
                                if (i6 >= c0035a2.f586b) {
                                    c0035a.f588d = i6 - c0035a2.f588d;
                                }
                            }
                            arrayList.set(size, c0035a2);
                            if (c0035a.f586b != c0035a.f588d) {
                                arrayList.set(i12, c0035a);
                            } else {
                                arrayList.remove(i12);
                            }
                            if (c0035aH3 != null) {
                                arrayList.add(size, c0035aH3);
                            }
                        }
                    }
                    c0035aH3 = null;
                    if (z3) {
                        arrayList.set(size, c0035a2);
                        arrayList.remove(i12);
                        aVar.getClass();
                        c0035a.f587c = null;
                        aVar.f37a.b(c0035a);
                    } else {
                        if (z4) {
                            if (c0035aH3 != null) {
                                i10 = c0035a.f586b;
                                if (i10 > c0035aH3.f586b) {
                                    c0035a.f586b = i10 - c0035aH3.f588d;
                                }
                                i11 = c0035a.f588d;
                                if (i11 > c0035aH3.f586b) {
                                    c0035a.f588d = i11 - c0035aH3.f588d;
                                }
                            }
                            i9 = c0035a.f586b;
                            if (i9 > c0035a2.f586b) {
                                c0035a.f586b = i9 - c0035a2.f588d;
                            }
                            i6 = c0035a.f588d;
                            if (i6 > c0035a2.f586b) {
                                c0035a.f588d = i6 - c0035a2.f588d;
                            }
                        } else {
                            if (c0035aH3 != null) {
                                i7 = c0035a.f586b;
                                if (i7 >= c0035aH3.f586b) {
                                    c0035a.f586b = i7 - c0035aH3.f588d;
                                }
                                i8 = c0035a.f588d;
                                if (i8 >= c0035aH3.f586b) {
                                    c0035a.f588d = i8 - c0035aH3.f588d;
                                }
                            }
                            i5 = c0035a.f586b;
                            if (i5 >= c0035a2.f586b) {
                                c0035a.f586b = i5 - c0035a2.f588d;
                            }
                            i6 = c0035a.f588d;
                            if (i6 >= c0035a2.f586b) {
                                c0035a.f588d = i6 - c0035a2.f588d;
                            }
                        }
                        arrayList.set(size, c0035a2);
                        if (c0035a.f586b != c0035a.f588d) {
                            arrayList.set(i12, c0035a);
                        } else {
                            arrayList.remove(i12);
                        }
                        if (c0035aH3 != null) {
                            arrayList.add(size, c0035aH3);
                        }
                    }
                } else if (i13 == 4) {
                    int i22 = c0035a.f588d;
                    int i23 = c0035a2.f586b;
                    if (i22 < i23) {
                        c0035a2.f586b = i23 - 1;
                    } else {
                        int i24 = c0035a2.f588d;
                        if (i22 < i23 + i24) {
                            c0035a2.f588d = i24 - 1;
                            c0035aH = aVar.h(4, c0035a.f586b, 1, c0035a2.f587c);
                        }
                        i2 = c0035a.f586b;
                        i3 = c0035a2.f586b;
                        if (i2 <= i3) {
                            c0035a2.f586b = i3 + 1;
                        } else {
                            i4 = i3 + c0035a2.f588d;
                            if (i2 < i4) {
                                int i25 = i4 - i2;
                                c0035aH2 = aVar.h(4, i2 + 1, i25, c0035a2.f587c);
                                c0035a2.f588d -= i25;
                            }
                            arrayList.set(i12, c0035a);
                            if (c0035a2.f588d > 0) {
                                arrayList.set(size, c0035a2);
                            } else {
                                arrayList.remove(size);
                                aVar.getClass();
                                c0035a2.f587c = null;
                                aVar.f37a.b(c0035a2);
                            }
                            if (c0035aH != null) {
                                arrayList.add(size, c0035aH);
                            }
                            if (c0035aH2 != null) {
                                arrayList.add(size, c0035aH2);
                            }
                        }
                        c0035aH2 = null;
                        arrayList.set(i12, c0035a);
                        if (c0035a2.f588d > 0) {
                            arrayList.set(size, c0035a2);
                        } else {
                            arrayList.remove(size);
                            aVar.getClass();
                            c0035a2.f587c = null;
                            aVar.f37a.b(c0035a2);
                        }
                        if (c0035aH != null) {
                            arrayList.add(size, c0035aH);
                        }
                        if (c0035aH2 != null) {
                            arrayList.add(size, c0035aH2);
                        }
                    }
                    c0035aH = null;
                    i2 = c0035a.f586b;
                    i3 = c0035a2.f586b;
                    if (i2 <= i3) {
                        c0035a2.f586b = i3 + 1;
                    } else {
                        i4 = i3 + c0035a2.f588d;
                        if (i2 < i4) {
                            int i26 = i4 - i2;
                            c0035aH2 = aVar.h(4, i2 + 1, i26, c0035a2.f587c);
                            c0035a2.f588d -= i26;
                        }
                        arrayList.set(i12, c0035a);
                        if (c0035a2.f588d > 0) {
                            arrayList.set(size, c0035a2);
                        } else {
                            arrayList.remove(size);
                            aVar.getClass();
                            c0035a2.f587c = null;
                            aVar.f37a.b(c0035a2);
                        }
                        if (c0035aH != null) {
                            arrayList.add(size, c0035aH);
                        }
                        if (c0035aH2 != null) {
                            arrayList.add(size, c0035aH2);
                        }
                    }
                    c0035aH2 = null;
                    arrayList.set(i12, c0035a);
                    if (c0035a2.f588d > 0) {
                        arrayList.set(size, c0035a2);
                    } else {
                        arrayList.remove(size);
                        aVar.getClass();
                        c0035a2.f587c = null;
                        aVar.f37a.b(c0035a2);
                    }
                    if (c0035aH != null) {
                        arrayList.add(size, c0035aH);
                    }
                    if (c0035aH2 != null) {
                        arrayList.add(size, c0035aH2);
                    }
                }
            } else {
                int i27 = c0035a.f588d;
                int i28 = c0035a2.f586b;
                int i29 = i27 < i28 ? -1 : 0;
                int i30 = c0035a.f586b;
                if (i30 < i28) {
                    i29++;
                }
                if (i28 <= i30) {
                    c0035a.f586b = i30 + c0035a2.f588d;
                }
                int i31 = c0035a2.f586b;
                if (i31 <= i27) {
                    c0035a.f588d = i27 + c0035a2.f588d;
                }
                c0035a2.f586b = i31 + i29;
                arrayList.set(size, c0035a2);
                arrayList.set(i12, c0035a);
            }
        }
        int size2 = arrayList.size();
        int i32 = 0;
        while (i32 < size2) {
            C0035a c0035aH4 = (C0035a) arrayList.get(i32);
            int i33 = c0035aH4.f585a;
            if (i33 != 1) {
                f fVar = this.f40d;
                if (i33 == 2) {
                    int i34 = c0035aH4.f586b;
                    int i35 = c0035aH4.f588d + i34;
                    int i36 = i34;
                    int i37 = 0;
                    byte b4 = -1;
                    while (i36 < i35) {
                        if (fVar.b(i36) != null || a(i36)) {
                            if (b4 == 0) {
                                d(h(2, i34, i37, null));
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            b3 = 1;
                        } else {
                            if (b4 == 1) {
                                i(h(2, i34, i37, null));
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            b3 = 0;
                        }
                        if (z2) {
                            i36 -= i37;
                            i35 -= i37;
                            i37 = 1;
                        } else {
                            i37++;
                        }
                        i36++;
                        b4 = b3;
                    }
                    if (i37 != c0035aH4.f588d) {
                        c0035aH4.f587c = null;
                        this.f37a.b(c0035aH4);
                        c0035aH4 = h(2, i34, i37, null);
                    }
                    if (b4 == 0) {
                        d(c0035aH4);
                    } else {
                        i(c0035aH4);
                    }
                } else if (i33 == 4) {
                    int i38 = c0035aH4.f586b;
                    int i39 = c0035aH4.f588d + i38;
                    int i40 = i38;
                    int i41 = 0;
                    while (i38 < i39) {
                        if (fVar.b(i38) != null || a(i38)) {
                            if (b2 == 0) {
                                d(h(4, i40, i41, c0035aH4.f587c));
                                i40 = i38;
                                i41 = 0;
                            }
                            b2 = 1;
                        } else {
                            if (b2 == 1) {
                                i(h(4, i40, i41, c0035aH4.f587c));
                                i40 = i38;
                                i41 = 0;
                            }
                            b2 = 0;
                        }
                        i41++;
                        i38++;
                    }
                    if (i41 != c0035aH4.f588d) {
                        Object obj = c0035aH4.f587c;
                        c0035aH4.f587c = null;
                        this.f37a.b(c0035aH4);
                        c0035aH4 = h(4, i40, i41, obj);
                    }
                    if (b2 == 0) {
                        d(c0035aH4);
                    } else {
                        i(c0035aH4);
                    }
                } else if (i33 == 8) {
                    i(c0035aH4);
                }
            } else {
                i(c0035aH4);
            }
            i32++;
            b2 = -1;
        }
        arrayList.clear();
    }

    public final void k(C0035a c0035a) {
        c0035a.f587c = null;
        this.f37a.b(c0035a);
    }

    public final void l(List list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            k((C0035a) list.get(i2));
        }
        list.clear();
    }

    public final int m(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        ArrayList arrayList = this.f39c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0035a c0035a = (C0035a) arrayList.get(size);
            int i10 = c0035a.f585a;
            if (i10 == 8) {
                int i11 = c0035a.f586b;
                int i12 = c0035a.f588d;
                if (i11 < i12) {
                    i6 = i11;
                    i5 = i12;
                } else {
                    i5 = i11;
                    i6 = i12;
                }
                if (i2 < i6 || i2 > i5) {
                    if (i2 < i11) {
                        if (i3 == 1) {
                            c0035a.f586b = i11 + 1;
                            i7 = i12 + 1;
                        } else if (i3 == 2) {
                            c0035a.f586b = i11 - 1;
                            i7 = i12 - 1;
                        }
                        c0035a.f588d = i7;
                    }
                } else if (i6 == i11) {
                    if (i3 == 1) {
                        i9 = i12 + 1;
                    } else {
                        if (i3 == 2) {
                            i9 = i12 - 1;
                        }
                        i2++;
                    }
                    c0035a.f588d = i9;
                    i2++;
                } else {
                    if (i3 == 1) {
                        i8 = i11 + 1;
                    } else {
                        if (i3 == 2) {
                            i8 = i11 - 1;
                        }
                        i2--;
                    }
                    c0035a.f586b = i8;
                    i2--;
                }
            } else {
                int i13 = c0035a.f586b;
                if (i13 > i2) {
                    if (i3 == 1) {
                        i4 = i13 + 1;
                    } else if (i3 == 2) {
                        i4 = i13 - 1;
                    }
                    c0035a.f586b = i4;
                } else if (i10 == 1) {
                    i2 -= c0035a.f588d;
                } else if (i10 == 2) {
                    i2 += c0035a.f588d;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0035a c0035a2 = (C0035a) arrayList.get(size2);
            if (c0035a2.f585a == 8) {
                int i14 = c0035a2.f588d;
                if (i14 == c0035a2.f586b || i14 < 0) {
                    arrayList.remove(size2);
                    c0035a2.f587c = null;
                    this.f37a.b(c0035a2);
                }
            } else if (c0035a2.f588d <= 0) {
                arrayList.remove(size2);
                c0035a2.f587c = null;
                this.f37a.b(c0035a2);
            }
        }
        return i2;
    }
}
