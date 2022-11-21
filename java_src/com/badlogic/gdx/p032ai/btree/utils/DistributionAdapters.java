package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.p032ai.utils.random.ConstantDoubleDistribution;
import com.badlogic.gdx.p032ai.utils.random.ConstantFloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.ConstantIntegerDistribution;
import com.badlogic.gdx.p032ai.utils.random.ConstantLongDistribution;
import com.badlogic.gdx.p032ai.utils.random.Distribution;
import com.badlogic.gdx.p032ai.utils.random.DoubleDistribution;
import com.badlogic.gdx.p032ai.utils.random.FloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.GaussianDoubleDistribution;
import com.badlogic.gdx.p032ai.utils.random.GaussianFloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.IntegerDistribution;
import com.badlogic.gdx.p032ai.utils.random.LongDistribution;
import com.badlogic.gdx.p032ai.utils.random.TriangularDoubleDistribution;
import com.badlogic.gdx.p032ai.utils.random.TriangularFloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.TriangularIntegerDistribution;
import com.badlogic.gdx.p032ai.utils.random.TriangularLongDistribution;
import com.badlogic.gdx.p032ai.utils.random.UniformDoubleDistribution;
import com.badlogic.gdx.p032ai.utils.random.UniformFloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.UniformIntegerDistribution;
import com.badlogic.gdx.p032ai.utils.random.UniformLongDistribution;
import com.badlogic.gdx.utils.ObjectMap;
import java.util.StringTokenizer;
/* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters */
/* loaded from: classes.dex */
public class DistributionAdapters {

    /* renamed from: c */
    public static final ObjectMap<Class<?>, Adapter<?>> f3270c;

    /* renamed from: a */
    public ObjectMap<Class<?>, Adapter<?>> f3271a = new ObjectMap<>();

    /* renamed from: b */
    public ObjectMap<Class<?>, ObjectMap<String, Adapter<?>>> f3272b = new ObjectMap<>();

    /* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters$DistributionFormatException */
    /* loaded from: classes.dex */
    public static class DistributionFormatException extends RuntimeException {
        public DistributionFormatException() {
        }

        public DistributionFormatException(String str) {
            super(str);
        }

        public DistributionFormatException(String str, Throwable th) {
            super(str, th);
        }

        public DistributionFormatException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters$DoubleAdapter */
    /* loaded from: classes.dex */
    public static abstract class DoubleAdapter<D extends DoubleDistribution> extends Adapter<D> {
        public DoubleAdapter(String str) {
            super(str, DoubleDistribution.class);
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters$FloatAdapter */
    /* loaded from: classes.dex */
    public static abstract class FloatAdapter<D extends FloatDistribution> extends Adapter<D> {
        public FloatAdapter(String str) {
            super(str, FloatDistribution.class);
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters$IntegerAdapter */
    /* loaded from: classes.dex */
    public static abstract class IntegerAdapter<D extends IntegerDistribution> extends Adapter<D> {
        public IntegerAdapter(String str) {
            super(str, IntegerDistribution.class);
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters$LongAdapter */
    /* loaded from: classes.dex */
    public static abstract class LongAdapter<D extends LongDistribution> extends Adapter<D> {
        public LongAdapter(String str) {
            super(str, LongDistribution.class);
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.utils.DistributionAdapters$Adapter */
    /* loaded from: classes.dex */
    public static abstract class Adapter<D extends Distribution> {

        /* renamed from: a */
        public final String f3273a;

        /* renamed from: b */
        public final Class<?> f3274b;

        public abstract D toDistribution(String[] strArr);

        public abstract String[] toParameters(D d);

        public Adapter(String str, Class<?> cls) {
            this.f3273a = str;
            this.f3274b = cls;
        }

        public static double parseDouble(String str) {
            try {
                return Double.parseDouble(str);
            } catch (NumberFormatException e) {
                throw new DistributionFormatException("Not a double value: " + str, e);
            }
        }

        public static float parseFloat(String str) {
            try {
                return Float.parseFloat(str);
            } catch (NumberFormatException e) {
                throw new DistributionFormatException("Not a float value: " + str, e);
            }
        }

        public static int parseInteger(String str) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                throw new DistributionFormatException("Not an int value: " + str, e);
            }
        }

        public static long parseLong(String str) {
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e) {
                throw new DistributionFormatException("Not a long value: " + str, e);
            }
        }
    }

    static {
        ObjectMap<Class<?>, Adapter<?>> objectMap = new ObjectMap<>();
        f3270c = objectMap;
        objectMap.put(ConstantDoubleDistribution.class, new DoubleAdapter<ConstantDoubleDistribution>("constant") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.1
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public ConstantDoubleDistribution toDistribution(String[] strArr) {
                if (strArr.length == 1) {
                    return new ConstantDoubleDistribution(Adapter.parseDouble(strArr[0]));
                }
                throw DistributionAdapters.m24395b(strArr.length, 1);
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(ConstantDoubleDistribution constantDoubleDistribution) {
                return new String[]{Double.toString(constantDoubleDistribution.getValue())};
            }
        });
        objectMap.put(ConstantFloatDistribution.class, new FloatAdapter<ConstantFloatDistribution>("constant") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.2
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public ConstantFloatDistribution toDistribution(String[] strArr) {
                if (strArr.length == 1) {
                    return new ConstantFloatDistribution(Adapter.parseFloat(strArr[0]));
                }
                throw DistributionAdapters.m24395b(strArr.length, 1);
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(ConstantFloatDistribution constantFloatDistribution) {
                return new String[]{Float.toString(constantFloatDistribution.getValue())};
            }
        });
        objectMap.put(ConstantIntegerDistribution.class, new IntegerAdapter<ConstantIntegerDistribution>("constant") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.3
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public ConstantIntegerDistribution toDistribution(String[] strArr) {
                if (strArr.length == 1) {
                    return new ConstantIntegerDistribution(Adapter.parseInteger(strArr[0]));
                }
                throw DistributionAdapters.m24395b(strArr.length, 1);
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(ConstantIntegerDistribution constantIntegerDistribution) {
                return new String[]{Integer.toString(constantIntegerDistribution.getValue())};
            }
        });
        objectMap.put(ConstantLongDistribution.class, new LongAdapter<ConstantLongDistribution>("constant") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.4
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public ConstantLongDistribution toDistribution(String[] strArr) {
                if (strArr.length == 1) {
                    return new ConstantLongDistribution(Adapter.parseLong(strArr[0]));
                }
                throw DistributionAdapters.m24395b(strArr.length, 1);
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(ConstantLongDistribution constantLongDistribution) {
                return new String[]{Long.toString(constantLongDistribution.getValue())};
            }
        });
        objectMap.put(GaussianDoubleDistribution.class, new DoubleAdapter<GaussianDoubleDistribution>("gaussian") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.5
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public GaussianDoubleDistribution toDistribution(String[] strArr) {
                if (strArr.length == 2) {
                    return new GaussianDoubleDistribution(Adapter.parseDouble(strArr[0]), Adapter.parseDouble(strArr[1]));
                }
                throw DistributionAdapters.m24395b(strArr.length, 2);
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(GaussianDoubleDistribution gaussianDoubleDistribution) {
                return new String[]{Double.toString(gaussianDoubleDistribution.getMean()), Double.toString(gaussianDoubleDistribution.getStandardDeviation())};
            }
        });
        objectMap.put(GaussianFloatDistribution.class, new FloatAdapter<GaussianFloatDistribution>("gaussian") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.6
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public GaussianFloatDistribution toDistribution(String[] strArr) {
                if (strArr.length == 2) {
                    return new GaussianFloatDistribution(Adapter.parseFloat(strArr[0]), Adapter.parseFloat(strArr[1]));
                }
                throw DistributionAdapters.m24395b(strArr.length, 2);
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(GaussianFloatDistribution gaussianFloatDistribution) {
                return new String[]{Float.toString(gaussianFloatDistribution.getMean()), Float.toString(gaussianFloatDistribution.getStandardDeviation())};
            }
        });
        objectMap.put(TriangularDoubleDistribution.class, new DoubleAdapter<TriangularDoubleDistribution>("triangular") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.7
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public TriangularDoubleDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length != 2) {
                        if (length == 3) {
                            return new TriangularDoubleDistribution(Adapter.parseDouble(strArr[0]), Adapter.parseDouble(strArr[1]), Adapter.parseDouble(strArr[2]));
                        }
                        throw DistributionAdapters.m24395b(strArr.length, 1, 2, 3);
                    }
                    return new TriangularDoubleDistribution(Adapter.parseDouble(strArr[0]), Adapter.parseDouble(strArr[1]));
                }
                return new TriangularDoubleDistribution(Adapter.parseDouble(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(TriangularDoubleDistribution triangularDoubleDistribution) {
                return new String[]{Double.toString(triangularDoubleDistribution.getLow()), Double.toString(triangularDoubleDistribution.getHigh()), Double.toString(triangularDoubleDistribution.getMode())};
            }
        });
        objectMap.put(TriangularFloatDistribution.class, new FloatAdapter<TriangularFloatDistribution>("triangular") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.8
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public TriangularFloatDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length != 2) {
                        if (length == 3) {
                            return new TriangularFloatDistribution(Adapter.parseFloat(strArr[0]), Adapter.parseFloat(strArr[1]), Adapter.parseFloat(strArr[2]));
                        }
                        throw DistributionAdapters.m24395b(strArr.length, 1, 2, 3);
                    }
                    return new TriangularFloatDistribution(Adapter.parseFloat(strArr[0]), Adapter.parseFloat(strArr[1]));
                }
                return new TriangularFloatDistribution(Adapter.parseFloat(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(TriangularFloatDistribution triangularFloatDistribution) {
                return new String[]{Float.toString(triangularFloatDistribution.getLow()), Float.toString(triangularFloatDistribution.getHigh()), Float.toString(triangularFloatDistribution.getMode())};
            }
        });
        objectMap.put(TriangularIntegerDistribution.class, new IntegerAdapter<TriangularIntegerDistribution>("triangular") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.9
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public TriangularIntegerDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length != 2) {
                        if (length == 3) {
                            return new TriangularIntegerDistribution(Adapter.parseInteger(strArr[0]), Adapter.parseInteger(strArr[1]), Float.valueOf(strArr[2]).floatValue());
                        }
                        throw DistributionAdapters.m24395b(strArr.length, 1, 2, 3);
                    }
                    return new TriangularIntegerDistribution(Adapter.parseInteger(strArr[0]), Adapter.parseInteger(strArr[1]));
                }
                return new TriangularIntegerDistribution(Adapter.parseInteger(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(TriangularIntegerDistribution triangularIntegerDistribution) {
                return new String[]{Integer.toString(triangularIntegerDistribution.getLow()), Integer.toString(triangularIntegerDistribution.getHigh()), Float.toString(triangularIntegerDistribution.getMode())};
            }
        });
        objectMap.put(TriangularLongDistribution.class, new LongAdapter<TriangularLongDistribution>("triangular") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.10
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public TriangularLongDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length != 2) {
                        if (length == 3) {
                            return new TriangularLongDistribution(Adapter.parseLong(strArr[0]), Adapter.parseLong(strArr[1]), Adapter.parseDouble(strArr[2]));
                        }
                        throw DistributionAdapters.m24395b(strArr.length, 1, 2, 3);
                    }
                    return new TriangularLongDistribution(Adapter.parseLong(strArr[0]), Adapter.parseLong(strArr[1]));
                }
                return new TriangularLongDistribution(Adapter.parseLong(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(TriangularLongDistribution triangularLongDistribution) {
                return new String[]{Long.toString(triangularLongDistribution.getLow()), Long.toString(triangularLongDistribution.getHigh()), Double.toString(triangularLongDistribution.getMode())};
            }
        });
        objectMap.put(UniformDoubleDistribution.class, new DoubleAdapter<UniformDoubleDistribution>("uniform") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.11
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public UniformDoubleDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length == 2) {
                        return new UniformDoubleDistribution(Adapter.parseDouble(strArr[0]), Adapter.parseDouble(strArr[1]));
                    }
                    throw DistributionAdapters.m24395b(strArr.length, 1, 2);
                }
                return new UniformDoubleDistribution(Adapter.parseDouble(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(UniformDoubleDistribution uniformDoubleDistribution) {
                return new String[]{Double.toString(uniformDoubleDistribution.getLow()), Double.toString(uniformDoubleDistribution.getHigh())};
            }
        });
        objectMap.put(UniformFloatDistribution.class, new FloatAdapter<UniformFloatDistribution>("uniform") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.12
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public UniformFloatDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length == 2) {
                        return new UniformFloatDistribution(Adapter.parseFloat(strArr[0]), Adapter.parseFloat(strArr[1]));
                    }
                    throw DistributionAdapters.m24395b(strArr.length, 1, 2);
                }
                return new UniformFloatDistribution(Adapter.parseFloat(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(UniformFloatDistribution uniformFloatDistribution) {
                return new String[]{Float.toString(uniformFloatDistribution.getLow()), Float.toString(uniformFloatDistribution.getHigh())};
            }
        });
        objectMap.put(UniformIntegerDistribution.class, new IntegerAdapter<UniformIntegerDistribution>("uniform") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.13
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public UniformIntegerDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length == 2) {
                        return new UniformIntegerDistribution(Adapter.parseInteger(strArr[0]), Adapter.parseInteger(strArr[1]));
                    }
                    throw DistributionAdapters.m24395b(strArr.length, 1, 2);
                }
                return new UniformIntegerDistribution(Adapter.parseInteger(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(UniformIntegerDistribution uniformIntegerDistribution) {
                return new String[]{Integer.toString(uniformIntegerDistribution.getLow()), Integer.toString(uniformIntegerDistribution.getHigh())};
            }
        });
        objectMap.put(UniformLongDistribution.class, new LongAdapter<UniformLongDistribution>("uniform") { // from class: com.badlogic.gdx.ai.btree.utils.DistributionAdapters.14
            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public UniformLongDistribution toDistribution(String[] strArr) {
                int length = strArr.length;
                if (length != 1) {
                    if (length == 2) {
                        return new UniformLongDistribution(Adapter.parseLong(strArr[0]), Adapter.parseLong(strArr[1]));
                    }
                    throw DistributionAdapters.m24395b(strArr.length, 1, 2);
                }
                return new UniformLongDistribution(Adapter.parseLong(strArr[0]));
            }

            @Override // com.badlogic.gdx.p032ai.btree.utils.DistributionAdapters.Adapter
            public String[] toParameters(UniformLongDistribution uniformLongDistribution) {
                return new String[]{Long.toString(uniformLongDistribution.getLow()), Long.toString(uniformLongDistribution.getHigh())};
            }
        });
    }

    /* renamed from: b */
    public static DistributionFormatException m24395b(int i, int... iArr) {
        String str;
        String str2 = "Found " + i + " arguments in triangular distribution; expected ";
        if (iArr.length < 2) {
            str = str2 + iArr.length;
        } else {
            int i2 = 0;
            String str3 = "";
            while (i2 < iArr.length - 1) {
                str3 = ", ";
                i2++;
                str2 = str2 + str3 + iArr[i2];
            }
            str = str2 + " or " + iArr[i2];
        }
        return new DistributionFormatException(str);
    }

    public final void add(Class<?> cls, Adapter<?> adapter) {
        this.f3271a.put(cls, adapter);
        ObjectMap<String, Adapter<?>> objectMap = this.f3272b.get(adapter.f3274b);
        if (objectMap == null) {
            objectMap = new ObjectMap<>();
            this.f3272b.put(adapter.f3274b, objectMap);
        }
        objectMap.put(adapter.f3273a, adapter);
    }

    public <T extends Distribution> T toDistribution(String str, Class<T> cls) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ", \t\f");
        if (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            Adapter<?> adapter = this.f3272b.get(cls).get(nextToken);
            if (adapter != null) {
                int countTokens = stringTokenizer.countTokens();
                String[] strArr = new String[countTokens];
                for (int i = 0; i < countTokens; i++) {
                    strArr[i] = stringTokenizer.nextToken();
                }
                return (T) adapter.toDistribution(strArr);
            }
            throw new DistributionFormatException("Cannot create a '" + cls.getSimpleName() + "' of type '" + nextToken + "'");
        }
        throw new DistributionFormatException("Missing ditribution type");
    }

    public String toString(Distribution distribution) {
        Adapter<?> adapter = this.f3271a.get(distribution.getClass());
        String[] parameters = adapter.toParameters(distribution);
        String str = adapter.f3273a;
        for (String str2 : parameters) {
            str = str + "," + str2;
        }
        return str;
    }

    public DistributionAdapters() {
        ObjectMap.Entries<Class<?>, Adapter<?>> it = f3270c.entries().iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            add((Class) next.key, (Adapter) next.value);
        }
    }
}
