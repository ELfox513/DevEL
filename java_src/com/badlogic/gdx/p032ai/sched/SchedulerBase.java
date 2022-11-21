package com.badlogic.gdx.p032ai.sched;

import com.badlogic.gdx.p032ai.sched.SchedulerBase.SchedulableRecord;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
/* renamed from: com.badlogic.gdx.ai.sched.SchedulerBase */
/* loaded from: classes.dex */
public abstract class SchedulerBase<T extends SchedulableRecord> implements Scheduler {

    /* renamed from: a */
    public Array<T> f3350a = new Array<>();

    /* renamed from: b */
    public Array<T> f3351b = new Array<>();

    /* renamed from: c */
    public IntArray f3352c = new IntArray();

    /* renamed from: d */
    public int f3353d;

    /* renamed from: com.badlogic.gdx.ai.sched.SchedulerBase$SchedulableRecord */
    /* loaded from: classes.dex */
    public static class SchedulableRecord {

        /* renamed from: a */
        public Schedulable f3354a;

        /* renamed from: b */
        public int f3355b;

        /* renamed from: c */
        public int f3356c;

        public SchedulableRecord(Schedulable schedulable, int i, int i2) {
            this.f3354a = schedulable;
            this.f3355b = i;
            this.f3356c = i2;
        }
    }

    /* renamed from: a */
    public int m24377a(int i) {
        IntArray intArray = this.f3352c;
        int i2 = intArray.size;
        if (i > i2) {
            intArray.ensureCapacity(i - i2);
        }
        IntArray intArray2 = this.f3352c;
        int[] iArr = intArray2.items;
        intArray2.size = i;
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = 0;
        }
        for (int i4 = 0; i4 < this.f3353d; i4++) {
            int i5 = i4 % i;
            int i6 = 0;
            while (true) {
                Array<T> array = this.f3350a;
                if (i6 < array.size) {
                    T t = array.get(i6);
                    if ((i4 - t.f3356c) % t.f3355b == 0) {
                        iArr[i5] = iArr[i5] + 1;
                    }
                    i6++;
                }
            }
        }
        int i7 = Integer.MAX_VALUE;
        int i8 = -1;
        for (int i9 = 0; i9 < i; i9++) {
            int i10 = iArr[i9];
            if (i10 < i7) {
                i8 = i9;
                i7 = i10;
            }
        }
        return i8;
    }

    public SchedulerBase(int i) {
        this.f3353d = i;
    }
}
