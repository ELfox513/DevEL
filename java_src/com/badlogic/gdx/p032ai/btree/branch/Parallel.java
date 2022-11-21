package com.badlogic.gdx.p032ai.btree.branch;

import com.badlogic.gdx.p032ai.btree.BranchTask;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.btree.branch.Parallel */
/* loaded from: classes.dex */
public class Parallel<E> extends BranchTask<E> {
    @TaskAttribute
    public Orchestrator orchestrator;
    @TaskAttribute
    public Policy policy;

    /* renamed from: q */
    public boolean f3207q;

    /* renamed from: r */
    public Boolean f3208r;

    /* renamed from: s */
    public int f3209s;

    /* renamed from: com.badlogic.gdx.ai.btree.branch.Parallel$Orchestrator */
    /* loaded from: classes.dex */
    public enum Orchestrator {
        Resume { // from class: com.badlogic.gdx.ai.btree.branch.Parallel.Orchestrator.1
            @Override // com.badlogic.gdx.p032ai.btree.branch.Parallel.Orchestrator
            public void execute(Parallel<?> parallel) {
                parallel.f3207q = true;
                parallel.f3208r = null;
                int i = 0;
                parallel.f3209s = 0;
                while (parallel.f3209s < parallel.f3193p.size) {
                    Task task = (Task) parallel.f3193p.get(parallel.f3209s);
                    if (task.getStatus() == Task.Status.RUNNING) {
                        task.run();
                    } else {
                        task.setControl(parallel);
                        task.start();
                        if (task.checkGuard(parallel)) {
                            task.run();
                        } else {
                            task.fail();
                        }
                    }
                    if (parallel.f3208r != null) {
                        if (parallel.f3207q) {
                            i = parallel.f3209s + 1;
                        }
                        parallel.mo24470b(i);
                        if (parallel.f3208r.booleanValue()) {
                            parallel.success();
                            return;
                        } else {
                            parallel.fail();
                            return;
                        }
                    }
                    Parallel.m24459n(parallel);
                }
                parallel.running();
            }
        },
        Join { // from class: com.badlogic.gdx.ai.btree.branch.Parallel.Orchestrator.2
            @Override // com.badlogic.gdx.p032ai.btree.branch.Parallel.Orchestrator
            public void execute(Parallel<?> parallel) {
                parallel.f3207q = true;
                parallel.f3208r = null;
                int i = 0;
                parallel.f3209s = 0;
                while (parallel.f3209s < parallel.f3193p.size) {
                    Task task = (Task) parallel.f3193p.get(parallel.f3209s);
                    int i2 = C11161.f3210a[task.getStatus().ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2 && i2 != 3) {
                            task.setControl(parallel);
                            task.start();
                            if (task.checkGuard(parallel)) {
                                task.run();
                            } else {
                                task.fail();
                            }
                        }
                    } else {
                        task.run();
                    }
                    if (parallel.f3208r != null) {
                        if (parallel.f3207q) {
                            i = parallel.f3209s + 1;
                        }
                        parallel.mo24470b(i);
                        parallel.resetAllChildren();
                        if (parallel.f3208r.booleanValue()) {
                            parallel.success();
                            return;
                        } else {
                            parallel.fail();
                            return;
                        }
                    }
                    Parallel.m24459n(parallel);
                }
                parallel.running();
            }
        };

        public abstract void execute(Parallel<?> parallel);

        /* synthetic */ Orchestrator(C11161 c11161) {
            this();
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.branch.Parallel$Policy */
    /* loaded from: classes.dex */
    public enum Policy {
        Sequence { // from class: com.badlogic.gdx.ai.btree.branch.Parallel.Policy.1
            @Override // com.badlogic.gdx.p032ai.btree.branch.Parallel.Policy
            public Boolean onChildFail(Parallel<?> parallel) {
                return Boolean.FALSE;
            }

            @Override // com.badlogic.gdx.p032ai.btree.branch.Parallel.Policy
            public Boolean onChildSuccess(Parallel<?> parallel) {
                if (C11161.f3211b[parallel.orchestrator.ordinal()] != 1) {
                    if (!parallel.f3207q || parallel.f3209s != parallel.f3193p.size - 1) {
                        return null;
                    }
                    return Boolean.TRUE;
                } else if (!parallel.f3207q || ((Task) parallel.f3193p.get(parallel.f3193p.size - 1)).getStatus() != Task.Status.SUCCEEDED) {
                    return null;
                } else {
                    return Boolean.TRUE;
                }
            }
        },
        Selector { // from class: com.badlogic.gdx.ai.btree.branch.Parallel.Policy.2
            @Override // com.badlogic.gdx.p032ai.btree.branch.Parallel.Policy
            public Boolean onChildFail(Parallel<?> parallel) {
                if (parallel.f3207q && parallel.f3209s == parallel.f3193p.size - 1) {
                    return Boolean.FALSE;
                }
                return null;
            }

            @Override // com.badlogic.gdx.p032ai.btree.branch.Parallel.Policy
            public Boolean onChildSuccess(Parallel<?> parallel) {
                return Boolean.TRUE;
            }
        };

        public abstract Boolean onChildFail(Parallel<?> parallel);

        public abstract Boolean onChildSuccess(Parallel<?> parallel);

        /* synthetic */ Policy(C11161 c11161) {
            this();
        }
    }

    public Parallel() {
        this(new Array());
    }

    /* renamed from: n */
    public static /* synthetic */ int m24459n(Parallel parallel) {
        int i = parallel.f3209s;
        parallel.f3209s = i + 1;
        return i;
    }

    @Override // com.badlogic.gdx.p032ai.btree.BranchTask, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        Parallel parallel = (Parallel) task;
        parallel.policy = this.policy;
        parallel.orchestrator = this.orchestrator;
        return super.mo24450c(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        this.f3208r = this.policy.onChildFail(this);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childRunning(Task<E> task, Task<E> task2) {
        this.f3207q = false;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        this.f3208r = this.policy.onChildSuccess(this);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        this.orchestrator.execute(this);
    }

    /* renamed from: com.badlogic.gdx.ai.btree.branch.Parallel$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11161 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3210a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f3211b;

        static {
            int[] iArr = new int[Orchestrator.values().length];
            f3211b = iArr;
            try {
                iArr[Orchestrator.Join.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3211b[Orchestrator.Resume.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Task.Status.values().length];
            f3210a = iArr2;
            try {
                iArr2[Task.Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3210a[Task.Status.SUCCEEDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3210a[Task.Status.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public Parallel(Task<E>... taskArr) {
        this(new Array(taskArr));
    }

    @Override // com.badlogic.gdx.p032ai.btree.BranchTask, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.policy = Policy.Sequence;
        this.orchestrator = Orchestrator.Resume;
        this.f3207q = true;
        this.f3208r = null;
        this.f3209s = 0;
        super.reset();
    }

    public Parallel(Array<Task<E>> array) {
        this(Policy.Sequence, array);
    }

    public void resetAllChildren() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChild(i).reset();
        }
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void resetTask() {
        super.resetTask();
        this.f3207q = true;
    }

    public Parallel(Policy policy) {
        this(policy, new Array());
    }

    public Parallel(Policy policy, Task<E>... taskArr) {
        this(policy, new Array(taskArr));
    }

    public Parallel(Policy policy, Array<Task<E>> array) {
        this(policy, Orchestrator.Resume, array);
    }

    public Parallel(Orchestrator orchestrator, Array<Task<E>> array) {
        this(Policy.Sequence, orchestrator, array);
    }

    public Parallel(Orchestrator orchestrator, Task<E>... taskArr) {
        this(Policy.Sequence, orchestrator, new Array(taskArr));
    }

    public Parallel(Policy policy, Orchestrator orchestrator, Array<Task<E>> array) {
        super(array);
        this.policy = policy;
        this.orchestrator = orchestrator;
        this.f3207q = true;
    }
}
