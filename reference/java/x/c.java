package x;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements v.a, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v.a f937a;

    public c(v.a aVar) {
        this.f937a = aVar;
        if (aVar != null && aVar.b() != v.b.f932a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
        }
    }

    @Override // v.a
    public final void a(Object obj) {
        v.a aVar = this;
        while (true) {
            c cVar = (c) aVar;
            v.a aVar2 = cVar.f937a;
            y.a.b(aVar2);
            try {
                obj = cVar.d(obj);
                if (obj == w.a.f933a) {
                    return;
                }
            } catch (Throwable th) {
                obj = new u.a(th);
            }
            cVar.getClass();
            if (!(aVar2 instanceof c)) {
                aVar2.a(obj);
                return;
            }
            aVar = aVar2;
        }
    }

    @Override // v.a
    public final v.b b() {
        return v.b.f932a;
    }

    public abstract v.a c(Object obj, v.a aVar);

    public abstract Object d(Object obj);

    public final String f() {
        int iIntValue;
        String strC;
        StringBuilder sb = new StringBuilder("Continuation at ");
        a aVar = (a) getClass().getAnnotation(a.class);
        Object name = null;
        str = null;
        str = null;
        str = null;
        String str = null;
        if (aVar != null) {
            int iV = aVar.v();
            if (iV > 1) {
                throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
            }
            try {
                Field declaredField = getClass().getDeclaredField("label");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(this);
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                iIntValue = (num != null ? num.intValue() : 0) - 1;
            } catch (Exception unused) {
                iIntValue = -1;
            }
            int i2 = iIntValue >= 0 ? aVar.l()[iIntValue] : -1;
            p.b bVar = b.f936b;
            p.b bVar2 = b.f935a;
            if (bVar == null) {
                try {
                    p.b bVar3 = new p.b(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                    b.f936b = bVar3;
                    bVar = bVar3;
                } catch (Exception unused2) {
                    b.f936b = bVar2;
                    bVar = bVar2;
                }
            }
            if (bVar != bVar2) {
                Method method = (Method) bVar.f505a;
                Object objInvoke = method != null ? method.invoke(getClass(), null) : null;
                if (objInvoke != null) {
                    Method method2 = (Method) bVar.f506b;
                    Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, null) : null;
                    if (objInvoke2 != null) {
                        Method method3 = (Method) bVar.f507c;
                        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
                        if (objInvoke3 instanceof String) {
                            str = (String) objInvoke3;
                        }
                    }
                }
            }
            if (str == null) {
                strC = aVar.c();
            } else {
                strC = str + '/' + aVar.c();
            }
            name = new StackTraceElement(strC, aVar.m(), aVar.f(), i2);
        }
        if (name == null) {
            name = getClass().getName();
        }
        sb.append(name);
        return sb.toString();
    }

    public final String toString() {
        if (this.f937a != null) {
            return f();
        }
        y.b.f938a.getClass();
        String string = getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith("kotlin.jvm.functions.")) {
            string = string.substring(21);
        }
        y.a.c(string, "renderLambdaToString(this)");
        return string;
    }

    public void e() {
    }
}
