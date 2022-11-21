package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.Logger;
import com.badlogic.gdx.p032ai.btree.BehaviorTree;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
import com.badlogic.gdx.p032ai.btree.branch.DynamicGuardSelector;
import com.badlogic.gdx.p032ai.btree.branch.Parallel;
import com.badlogic.gdx.p032ai.btree.branch.RandomSelector;
import com.badlogic.gdx.p032ai.btree.branch.RandomSequence;
import com.badlogic.gdx.p032ai.btree.branch.Selector;
import com.badlogic.gdx.p032ai.btree.branch.Sequence;
import com.badlogic.gdx.p032ai.btree.decorator.AlwaysFail;
import com.badlogic.gdx.p032ai.btree.decorator.AlwaysSucceed;
import com.badlogic.gdx.p032ai.btree.decorator.Include;
import com.badlogic.gdx.p032ai.btree.decorator.Invert;
import com.badlogic.gdx.p032ai.btree.decorator.Random;
import com.badlogic.gdx.p032ai.btree.decorator.Repeat;
import com.badlogic.gdx.p032ai.btree.decorator.SemaphoreGuard;
import com.badlogic.gdx.p032ai.btree.decorator.UntilFail;
import com.badlogic.gdx.p032ai.btree.decorator.UntilSuccess;
import com.badlogic.gdx.p032ai.btree.leaf.Failure;
import com.badlogic.gdx.p032ai.btree.leaf.Success;
import com.badlogic.gdx.p032ai.btree.leaf.Wait;
import com.badlogic.gdx.p032ai.utils.random.Distribution;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.reflect.Annotation;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import com.badlogic.gdx.utils.reflect.Field;
import com.badlogic.gdx.utils.reflect.ReflectionException;
import java.io.InputStream;
import java.io.Reader;
/* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser */
/* loaded from: classes.dex */
public class BehaviorTreeParser<E> {
    public static final int DEBUG_HIGH = 2;
    public static final int DEBUG_LOW = 1;
    public static final int DEBUG_NONE = 0;

    /* renamed from: a */
    public DefaultBehaviorTreeReader<E> f3226a;
    public int debugLevel;
    public DistributionAdapters distributionAdapters;

    /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser$DefaultBehaviorTreeReader */
    /* loaded from: classes.dex */
    public static class DefaultBehaviorTreeReader<E> extends BehaviorTreeReader {

        /* renamed from: F */
        public static final ObjectMap<String, String> f3227F = new ObjectMap<>();

        /* renamed from: A */
        public StackedTask<E> f3228A;

        /* renamed from: B */
        public StackedTask<E> f3229B;

        /* renamed from: C */
        public Array<StackedTask<E>> f3230C;

        /* renamed from: D */
        public ObjectSet<String> f3231D;

        /* renamed from: E */
        public boolean f3232E;

        /* renamed from: n */
        public BehaviorTreeParser<E> f3233n;

        /* renamed from: o */
        public ObjectMap<Class<?>, Metadata> f3234o;

        /* renamed from: p */
        public Task<E> f3235p;

        /* renamed from: q */
        public String f3236q;

        /* renamed from: r */
        public Statement f3237r;

        /* renamed from: s */
        public int f3238s;

        /* renamed from: t */
        public ObjectMap<String, String> f3239t;

        /* renamed from: u */
        public ObjectMap<String, Subtree<E>> f3240u;

        /* renamed from: v */
        public Subtree<E> f3241v;

        /* renamed from: w */
        public int f3242w;

        /* renamed from: x */
        public int f3243x;

        /* renamed from: y */
        public int f3244y;

        /* renamed from: z */
        public boolean f3245z;

        /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser$DefaultBehaviorTreeReader$AttrInfo */
        /* loaded from: classes.dex */
        public static class AttrInfo {

            /* renamed from: a */
            public String f3246a;

            /* renamed from: b */
            public String f3247b;

            /* renamed from: c */
            public boolean f3248c;

            public AttrInfo(String str, TaskAttribute taskAttribute) {
                this(taskAttribute.name(), str, taskAttribute.required());
            }

            public AttrInfo(String str, String str2, boolean z) {
                this.f3246a = (str == null || str.length() == 0) ? str2 : str;
                this.f3247b = str2;
                this.f3248c = z;
            }
        }

        /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser$DefaultBehaviorTreeReader$Statement */
        /* loaded from: classes.dex */
        public enum Statement {
            Import("import") { // from class: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement.1
                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: d */
                public <E> void mo24416d(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, boolean z) {
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: f */
                public <E> void mo24415f(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader) {
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: c */
                public <E> boolean mo24417c(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, Object obj) {
                    if (!(obj instanceof String)) {
                        defaultBehaviorTreeReader.m24427T(this.f3253a, str, "String");
                    }
                    defaultBehaviorTreeReader.m24418z(str, (String) obj);
                    return true;
                }
            },
            Subtree("subtree") { // from class: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement.2
                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: d */
                public <E> void mo24416d(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, boolean z) {
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: c */
                public <E> boolean mo24417c(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, Object obj) {
                    if (!str.equals("name")) {
                        defaultBehaviorTreeReader.m24428S(this.f3253a, str, "name");
                    }
                    if (!(obj instanceof String)) {
                        defaultBehaviorTreeReader.m24427T(this.f3253a, str, "String");
                    }
                    if (!"".equals(obj)) {
                        if (defaultBehaviorTreeReader.f3236q == null) {
                            defaultBehaviorTreeReader.f3236q = (String) obj;
                            return true;
                        }
                        throw new GdxRuntimeException(this.f3253a + ": the name has been already specified");
                    }
                    throw new GdxRuntimeException(this.f3253a + ": the name connot be empty");
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: f */
                public <E> void mo24415f(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader) {
                    String str = defaultBehaviorTreeReader.f3236q;
                    if (str != null) {
                        defaultBehaviorTreeReader.m24429R(str);
                        defaultBehaviorTreeReader.f3236q = null;
                        return;
                    }
                    throw new GdxRuntimeException(this.f3253a + ": the name has not been specified");
                }
            },
            Root("root") { // from class: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement.3
                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: c */
                public <E> boolean mo24417c(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, Object obj) {
                    defaultBehaviorTreeReader.m24427T(this.f3253a, str, null);
                    return true;
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: d */
                public <E> void mo24416d(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, boolean z) {
                    defaultBehaviorTreeReader.f3236q = "";
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: f */
                public <E> void mo24415f(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader) {
                    defaultBehaviorTreeReader.m24429R(defaultBehaviorTreeReader.f3236q);
                    defaultBehaviorTreeReader.f3236q = null;
                }
            },
            TreeTask(null) { // from class: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement.4
                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: d */
                public <E> void mo24416d(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, boolean z) {
                    if (defaultBehaviorTreeReader.f3241v == null) {
                        defaultBehaviorTreeReader.m24429R("");
                        defaultBehaviorTreeReader.f3236q = null;
                    }
                    defaultBehaviorTreeReader.m24434M(str, z);
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: f */
                public <E> void mo24415f(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader) {
                    if (!defaultBehaviorTreeReader.f3245z) {
                        defaultBehaviorTreeReader.m24444C(defaultBehaviorTreeReader.m24439H());
                        defaultBehaviorTreeReader.f3231D.clear();
                    }
                }

                @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeParser.DefaultBehaviorTreeReader.Statement
                /* renamed from: c */
                public <E> boolean mo24417c(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, Object obj) {
                    StackedTask<E> m24439H = defaultBehaviorTreeReader.m24439H();
                    AttrInfo attrInfo = m24439H.metadata.f3251c.get(str);
                    if (attrInfo == null) {
                        return false;
                    }
                    if (defaultBehaviorTreeReader.f3231D.add(str)) {
                        defaultBehaviorTreeReader.m24432O(defaultBehaviorTreeReader.m24438I(m24439H.task.getClass(), attrInfo.f3247b), m24439H.task, obj);
                        return true;
                    }
                    throw defaultBehaviorTreeReader.m24431P(m24439H, "attribute '" + str + "' specified more than once");
                }
            };
            

            /* renamed from: a */
            public String f3253a;

            /* renamed from: c */
            public abstract <E> boolean mo24417c(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, Object obj);

            /* renamed from: d */
            public abstract <E> void mo24416d(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader, String str, boolean z);

            /* renamed from: f */
            public abstract <E> void mo24415f(DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader);

            Statement(String str) {
                this.f3253a = str;
            }
        }

        /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree */
        /* loaded from: classes.dex */
        public static class Subtree<E> {

            /* renamed from: a */
            public String f3254a;

            /* renamed from: b */
            public Task<E> f3255b;

            /* renamed from: c */
            public int f3256c;

            public Subtree() {
                this(null);
            }

            public void init(Task<E> task) {
                this.f3255b = task;
            }

            public boolean inited() {
                return this.f3255b != null;
            }

            public boolean isRootTree() {
                String str = this.f3254a;
                return str == null || "".equals(str);
            }

            public Subtree(String str) {
                this.f3254a = str;
                this.f3255b = null;
                this.f3256c = 0;
            }

            public Task<E> rootTaskInstance() {
                int i = this.f3256c;
                this.f3256c = i + 1;
                if (i == 0) {
                    return this.f3255b;
                }
                return this.f3255b.cloneTask();
            }
        }

        public DefaultBehaviorTreeReader() {
            this(false);
        }

        /* renamed from: E */
        public void m24442E() {
            this.f3228A = null;
            this.f3229B = null;
            this.f3241v = null;
            this.f3239t.clear();
            this.f3240u.clear();
            this.f3230C.clear();
            this.f3231D.clear();
        }

        /* renamed from: H */
        public StackedTask<E> m24439H() {
            return this.f3232E ? this.f3229B : this.f3228A;
        }

        /* renamed from: K */
        public StackedTask<E> m24436K() {
            return this.f3228A;
        }

        /* renamed from: L */
        public void m24435L(Task<E> task, int i) {
            this.f3243x = -1;
            this.f3244y = 1;
            this.f3242w = i;
            this.f3241v.init(task);
            this.f3228A = null;
        }

        /* renamed from: O */
        public final void m24432O(Field field, Task<E> task, Object obj) {
            field.setAccessible(true);
            Object m24446A = m24446A(field, obj);
            if (m24446A == null) {
                m24427T(m24439H().name, field.getName(), field.getType().getSimpleName());
            }
            try {
                field.set(task, m24446A);
            } catch (ReflectionException e) {
                throw new GdxRuntimeException(e);
            }
        }

        /* renamed from: P */
        public final GdxRuntimeException m24431P(StackedTask<E> stackedTask, String str) {
            return new GdxRuntimeException(stackedTask.name + " at line " + stackedTask.lineNumber + ": " + str);
        }

        /* renamed from: R */
        public void m24429R(String str) {
            m24433N(0);
            Subtree<E> subtree = new Subtree<>(str);
            this.f3241v = subtree;
            if (this.f3240u.put(str, subtree) == null) {
                return;
            }
            throw new GdxRuntimeException("A subtree named '" + str + "' is already defined");
        }

        /* renamed from: T */
        public final void m24427T(String str, String str2, String str3) {
            throw new GdxRuntimeException(str + ": attribute '" + str2 + "' must be of type " + str3);
        }

        @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader
        /* renamed from: d */
        public void mo24411d() {
        }

        @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader
        /* renamed from: e */
        public void mo24410e() {
            this.f3237r.mo24415f(this);
        }

        public BehaviorTreeParser<E> getParser() {
            return this.f3233n;
        }

        public void setParser(BehaviorTreeParser<E> behaviorTreeParser) {
            this.f3233n = behaviorTreeParser;
        }

        /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser$DefaultBehaviorTreeReader$Metadata */
        /* loaded from: classes.dex */
        public static class Metadata {

            /* renamed from: a */
            public int f3249a;

            /* renamed from: b */
            public int f3250b;

            /* renamed from: c */
            public ObjectMap<String, AttrInfo> f3251c;

            public Metadata(int i, int i2, ObjectMap<String, AttrInfo> objectMap) {
                this.f3249a = i < 0 ? 0 : i;
                this.f3250b = i2 < 0 ? Integer.MAX_VALUE : i2;
                this.f3251c = objectMap;
            }
        }

        /* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeParser$DefaultBehaviorTreeReader$StackedTask */
        /* loaded from: classes.dex */
        public static class StackedTask<E> {
            public int lineNumber;
            public Metadata metadata;
            public String name;
            public Task<E> task;

            public StackedTask(int i, String str, Task<E> task, Metadata metadata) {
                this.lineNumber = i;
                this.name = str;
                this.task = task;
                this.metadata = metadata;
            }
        }

        static {
            String str;
            Class[] clsArr = {AlwaysFail.class, AlwaysSucceed.class, DynamicGuardSelector.class, Failure.class, Include.class, Invert.class, Parallel.class, Random.class, RandomSelector.class, RandomSequence.class, Repeat.class, Selector.class, SemaphoreGuard.class, Sequence.class, Success.class, UntilFail.class, UntilSuccess.class, Wait.class};
            for (int i = 0; i < 18; i++) {
                Class cls = clsArr[i];
                String name = cls.getName();
                String simpleName = cls.getSimpleName();
                StringBuilder sb = new StringBuilder();
                sb.append(Character.toLowerCase(simpleName.charAt(0)));
                if (simpleName.length() > 1) {
                    str = simpleName.substring(1);
                } else {
                    str = "";
                }
                sb.append(str);
                f3227F.put(sb.toString(), name);
            }
        }

        public DefaultBehaviorTreeReader(boolean z) {
            super(z);
            this.f3234o = new ObjectMap<>();
            this.f3239t = new ObjectMap<>();
            this.f3240u = new ObjectMap<>();
            this.f3230C = new Array<>();
            this.f3231D = new ObjectSet<>();
        }

        /* renamed from: A */
        public Object m24446A(Field field, Object obj) {
            Enum[] enumArr;
            Object valueOf;
            Class type = field.getType();
            if (obj instanceof Number) {
                Number number = (Number) obj;
                if (type != Integer.TYPE && type != Integer.class) {
                    if (type != Float.TYPE && type != Float.class) {
                        if (type != Long.TYPE && type != Long.class) {
                            if (type != Double.TYPE && type != Double.class) {
                                if (type != Short.TYPE && type != Short.class) {
                                    if (type != Byte.TYPE && type != Byte.class) {
                                        if (ClassReflection.isAssignableFrom(Distribution.class, type)) {
                                            valueOf = this.f3233n.distributionAdapters.toDistribution("constant," + number, type);
                                        }
                                    } else {
                                        valueOf = Byte.valueOf(number.byteValue());
                                    }
                                } else {
                                    valueOf = Short.valueOf(number.shortValue());
                                }
                            } else {
                                valueOf = Double.valueOf(number.doubleValue());
                            }
                        } else {
                            valueOf = Long.valueOf(number.longValue());
                        }
                    } else {
                        valueOf = Float.valueOf(number.floatValue());
                    }
                } else {
                    valueOf = Integer.valueOf(number.intValue());
                }
                return valueOf;
            } else if (obj instanceof Boolean) {
                if (type == Boolean.TYPE || type == Boolean.class) {
                    return obj;
                }
            } else if (obj instanceof String) {
                String str = (String) obj;
                if (type != String.class) {
                    if (type != Character.TYPE && type != Character.class) {
                        if (ClassReflection.isAssignableFrom(Distribution.class, type)) {
                            return this.f3233n.distributionAdapters.toDistribution(str, type);
                        }
                        if (ClassReflection.isAssignableFrom(Enum.class, type)) {
                            for (Enum r0 : (Enum[]) type.getEnumConstants()) {
                                if (r0.name().equalsIgnoreCase(str)) {
                                    return r0;
                                }
                            }
                        }
                    } else if (str.length() == 1) {
                        return Character.valueOf(str.charAt(0));
                    } else {
                        throw new GdxRuntimeException("Invalid character '" + obj + "'");
                    }
                } else {
                    return obj;
                }
            }
            return null;
        }

        /* renamed from: B */
        public final void m24445B(StackedTask<E> stackedTask) {
            int i = stackedTask.metadata.f3249a;
            if (stackedTask.task.getChildCount() >= i) {
                return;
            }
            throw m24431P(stackedTask, "not enough children (" + stackedTask.task.getChildCount() + " < " + i + ")");
        }

        /* renamed from: C */
        public final void m24444C(StackedTask<E> stackedTask) {
            ObjectMap.Entries<String, AttrInfo> it = stackedTask.metadata.f3251c.iterator();
            while (it.hasNext()) {
                ObjectMap.Entry<String, AttrInfo> next = it.next();
                if (next.value.f3248c && !this.f3231D.contains(next.key)) {
                    throw m24431P(stackedTask, "missing required attribute '" + next.key + "'");
                }
            }
        }

        /* renamed from: D */
        public final Statement m24443D(String str) {
            Statement statement = Statement.Import;
            if (str.equals(statement.f3253a)) {
                return statement;
            }
            Statement statement2 = Statement.Subtree;
            if (str.equals(statement2.f3253a)) {
                return statement2;
            }
            Statement statement3 = Statement.Root;
            if (str.equals(statement3.f3253a)) {
                return statement3;
            }
            return Statement.TreeTask;
        }

        /* renamed from: G */
        public final Metadata m24440G(Class<?> cls) {
            Annotation annotation;
            Field[] fields;
            Metadata metadata = this.f3234o.get(cls);
            if (metadata == null && (annotation = ClassReflection.getAnnotation(cls, TaskConstraint.class)) != null) {
                TaskConstraint taskConstraint = (TaskConstraint) annotation.getAnnotation(TaskConstraint.class);
                ObjectMap objectMap = new ObjectMap();
                for (Field field : ClassReflection.getFields(cls)) {
                    Annotation declaredAnnotation = field.getDeclaredAnnotation(TaskAttribute.class);
                    if (declaredAnnotation != null) {
                        AttrInfo attrInfo = new AttrInfo(field.getName(), (TaskAttribute) declaredAnnotation.getAnnotation(TaskAttribute.class));
                        objectMap.put(attrInfo.f3246a, attrInfo);
                    }
                }
                Metadata metadata2 = new Metadata(taskConstraint.minChildren(), taskConstraint.maxChildren(), objectMap);
                this.f3234o.put(cls, metadata2);
                return metadata2;
            }
            return metadata;
        }

        /* renamed from: J */
        public String m24437J(String str) {
            String str2 = f3227F.get(str);
            if (str2 == null) {
                return this.f3239t.get(str);
            }
            return str2;
        }

        /* renamed from: M */
        public final void m24434M(String str, boolean z) {
            Task<E> task;
            try {
                if (this.f3245z) {
                    task = m24430Q(str);
                } else {
                    String m24437J = m24437J(str);
                    if (m24437J == null) {
                        m24437J = str;
                    }
                    task = (Task) ClassReflection.newInstance(ClassReflection.forName(m24437J));
                }
                if (!this.f3241v.inited()) {
                    m24435L(task, this.f3238s);
                    this.f3238s = 0;
                } else if (!z) {
                    StackedTask<E> m24436K = m24436K();
                    int i = this.f3238s - this.f3242w;
                    this.f3238s = i;
                    if (m24436K.task == this.f3241v.f3255b) {
                        this.f3244y = i;
                    }
                    int i2 = this.f3243x;
                    if (i > i2) {
                        this.f3230C.add(m24436K);
                    } else if (i <= i2) {
                        m24433N(this.f3230C.size - ((i2 - i) / this.f3244y));
                    }
                    StackedTask<E> peek = this.f3230C.peek();
                    int i3 = peek.metadata.f3250b;
                    if (peek.task.getChildCount() < i3) {
                        peek.task.addChild(task);
                    } else {
                        throw m24431P(peek, "max number of children exceeded (" + (peek.task.getChildCount() + 1) + " > " + i3 + ")");
                    }
                }
                m24426U(m24441F(str, task), this.f3238s, z);
            } catch (ReflectionException e) {
                throw new GdxRuntimeException("Cannot parse behavior tree!!!", e);
            }
        }

        /* renamed from: N */
        public final void m24433N(int i) {
            StackedTask<E> stackedTask = this.f3228A;
            if (stackedTask != null) {
                m24445B(stackedTask);
            }
            while (true) {
                Array<StackedTask<E>> array = this.f3230C;
                if (array.size > i) {
                    m24445B(array.pop());
                } else {
                    return;
                }
            }
        }

        /* renamed from: Q */
        public Task<E> m24430Q(String str) {
            Subtree<E> subtree = this.f3240u.get(str);
            if (subtree != null) {
                return subtree.rootTaskInstance();
            }
            throw new GdxRuntimeException("Undefined subtree with name '" + str + "'");
        }

        /* renamed from: S */
        public final void m24428S(String str, String str2, String str3) {
            String str4;
            if (str3 != null) {
                str4 = "expected '" + str3 + "' instead";
            } else {
                str4 = " no attribute expected";
            }
            throw new GdxRuntimeException(str + ": attribute '" + str2 + "' unknown; " + str4);
        }

        /* renamed from: U */
        public void m24426U(StackedTask<E> stackedTask, int i, boolean z) {
            Task<E> task;
            this.f3232E = z;
            Task<E> task2 = stackedTask.task;
            StackedTask<E> stackedTask2 = this.f3229B;
            if (stackedTask2 == null) {
                task = null;
            } else {
                task = stackedTask2.task;
            }
            task2.setGuard(task);
            if (z) {
                this.f3229B = stackedTask;
                return;
            }
            this.f3228A = stackedTask;
            this.f3229B = null;
            this.f3243x = i;
        }

        @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader
        /* renamed from: a */
        public void mo24414a(String str, Object obj) {
            if (this.f3233n.debugLevel > 1) {
                Logger logger = GdxAI.getLogger();
                logger.debug("BehaviorTreeParser", this.f3268b + ": attribute '" + str + " : " + obj + "'");
            }
            if (!this.f3237r.mo24417c(this, str, obj)) {
                if (this.f3237r == Statement.TreeTask) {
                    StackedTask<E> m24439H = m24439H();
                    throw m24431P(m24439H, "unknown attribute '" + str + "'");
                }
                throw new GdxRuntimeException(this.f3237r.f3253a + ": unknown attribute '" + str + "'");
            }
        }

        @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader
        /* renamed from: p */
        public void mo24399p(int i) {
            if (this.f3233n.debugLevel > 1) {
                Logger logger = GdxAI.getLogger();
                logger.debug("BehaviorTreeParser", this.f3268b + ": <" + i + ">");
            }
            this.f3238s = i;
        }

        @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader
        public void parse(char[] cArr, int i, int i2) {
            boolean z;
            if (this.f3233n.debugLevel > 0) {
                z = true;
            } else {
                z = false;
            }
            this.f3267a = z;
            this.f3235p = null;
            m24442E();
            super.parse(cArr, i, i2);
            m24433N(0);
            Subtree<E> subtree = this.f3240u.get("");
            if (subtree != null) {
                Task<E> task = subtree.f3255b;
                this.f3235p = task;
                if (task != null) {
                    m24442E();
                    return;
                }
                throw new GdxRuntimeException("The tree must have at least the root task");
            }
            throw new GdxRuntimeException("Missing root tree");
        }

        @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader
        /* renamed from: q */
        public void mo24398q(String str, boolean z, boolean z2) {
            Statement m24443D;
            String str2;
            if (this.f3233n.debugLevel > 1) {
                Logger logger = GdxAI.getLogger();
                StringBuilder sb = new StringBuilder();
                if (z2) {
                    str2 = " guard";
                } else {
                    str2 = " task";
                }
                sb.append(str2);
                sb.append(" name '");
                sb.append(str);
                sb.append("'");
                logger.debug("BehaviorTreeParser", sb.toString());
            }
            this.f3245z = z;
            if (z) {
                m24443D = Statement.TreeTask;
            } else {
                m24443D = m24443D(str);
            }
            this.f3237r = m24443D;
            if (z2 && m24443D != Statement.TreeTask) {
                throw new GdxRuntimeException(str + ": only tree's tasks can be guarded");
            }
            m24443D.mo24416d(this, str, z2);
        }

        /* renamed from: z */
        public void m24418z(String str, String str2) {
            if (str2 != null) {
                if (str == null) {
                    try {
                        str = ClassReflection.forName(str2).getSimpleName();
                    } catch (ReflectionException unused) {
                        throw new GdxRuntimeException("import: class not found '" + str2 + "'");
                    }
                }
                if (m24437J(str) == null) {
                    this.f3239t.put(str, str2);
                    return;
                }
                throw new GdxRuntimeException("import: alias '" + str + "' previously defined already.");
            }
            throw new GdxRuntimeException("import: missing task class name.");
        }

        /* renamed from: F */
        public final StackedTask<E> m24441F(String str, Task<E> task) {
            Metadata m24440G = m24440G(task.getClass());
            if (m24440G != null) {
                return new StackedTask<>(this.f3268b, str, task, m24440G);
            }
            throw new GdxRuntimeException(str + ": @TaskConstraint annotation not found in '" + task.getClass().getSimpleName() + "' class hierarchy");
        }

        /* renamed from: I */
        public final Field m24438I(Class<?> cls, String str) {
            try {
                return ClassReflection.getField(cls, str);
            } catch (ReflectionException e) {
                throw new GdxRuntimeException(e);
            }
        }
    }

    public BehaviorTreeParser() {
        this(0);
    }

    /* renamed from: b */
    public static <E> void m24447b(Task<E> task, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            System.out.print(' ');
        }
        if (task.getGuard() != null) {
            System.out.println("Guard");
            i += 2;
            m24447b(task.getGuard(), i);
            for (int i3 = 0; i3 < i; i3++) {
                System.out.print(' ');
            }
        }
        System.out.println(task.getClass().getSimpleName());
        for (int i4 = 0; i4 < task.getChildCount(); i4++) {
            m24447b(task.getChild(i4), i + 2);
        }
    }

    public BehaviorTree<E> parse(String str, E e) {
        this.f3226a.parse(str);
        return m24448a(this.f3226a.f3235p, e);
    }

    public BehaviorTreeParser(DistributionAdapters distributionAdapters) {
        this(distributionAdapters, 0);
    }

    /* renamed from: a */
    public BehaviorTree<E> m24448a(Task<E> task, E e) {
        if (this.debugLevel > 1) {
            m24447b(task, 0);
        }
        return new BehaviorTree<>(task, e);
    }

    public BehaviorTreeParser(int i) {
        this(new DistributionAdapters(), i);
    }

    public BehaviorTree<E> parse(InputStream inputStream, E e) {
        this.f3226a.parse(inputStream);
        return m24448a(this.f3226a.f3235p, e);
    }

    public BehaviorTreeParser(DistributionAdapters distributionAdapters, int i) {
        this(distributionAdapters, i, null);
    }

    public BehaviorTreeParser(DistributionAdapters distributionAdapters, int i, DefaultBehaviorTreeReader<E> defaultBehaviorTreeReader) {
        this.distributionAdapters = distributionAdapters;
        this.debugLevel = i;
        defaultBehaviorTreeReader = defaultBehaviorTreeReader == null ? new DefaultBehaviorTreeReader<>() : defaultBehaviorTreeReader;
        this.f3226a = defaultBehaviorTreeReader;
        defaultBehaviorTreeReader.setParser(this);
    }

    public BehaviorTree<E> parse(FileHandle fileHandle, E e) {
        this.f3226a.parse(fileHandle);
        return m24448a(this.f3226a.f3235p, e);
    }

    public BehaviorTree<E> parse(Reader reader, E e) {
        this.f3226a.parse(reader);
        return m24448a(this.f3226a.f3235p, e);
    }
}
