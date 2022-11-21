package com.badlogic.gdx.p032ai.sched;

import com.badlogic.gdx.p032ai.sched.SchedulerBase;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.sched.PriorityScheduler */
/* loaded from: classes.dex */
public class PriorityScheduler extends SchedulerBase<PrioritySchedulableRecord> {

    /* renamed from: e */
    public int f3348e;

    @Override // com.badlogic.gdx.p032ai.sched.Scheduler
    public void add(Schedulable schedulable, int i, int i2) {
        add(schedulable, i, i2, 1.0f);
    }

    @Override // com.badlogic.gdx.p032ai.sched.Scheduler
    public void addWithAutomaticPhasing(Schedulable schedulable, int i) {
        addWithAutomaticPhasing(schedulable, i, 1.0f);
    }

    /* renamed from: com.badlogic.gdx.ai.sched.PriorityScheduler$PrioritySchedulableRecord */
    /* loaded from: classes.dex */
    public static class PrioritySchedulableRecord extends SchedulerBase.SchedulableRecord {

        /* renamed from: d */
        public float f3349d;

        public PrioritySchedulableRecord(Schedulable schedulable, int i, int i2, float f) {
            super(schedulable, i, i2);
            this.f3349d = f;
        }
    }

    public void add(Schedulable schedulable, int i, int i2, float f) {
        this.f3350a.add(new PrioritySchedulableRecord(schedulable, i, i2, f));
    }

    public void addWithAutomaticPhasing(Schedulable schedulable, int i, float f) {
        add(schedulable, i, m24377a(i), f);
    }

    @Override // com.badlogic.gdx.p032ai.sched.Schedulable
    public void run(long j) {
        PrioritySchedulableRecord prioritySchedulableRecord;
        this.f3348e++;
        int i = 0;
        this.f3351b.size = 0;
        float f = 0.0f;
        int i2 = 0;
        while (true) {
            Array<T> array = this.f3350a;
            if (i2 >= array.size) {
                break;
            }
            PrioritySchedulableRecord prioritySchedulableRecord2 = (PrioritySchedulableRecord) array.get(i2);
            if ((this.f3348e + prioritySchedulableRecord2.f3356c) % prioritySchedulableRecord2.f3355b == 0) {
                this.f3351b.add(prioritySchedulableRecord2);
                f += prioritySchedulableRecord2.f3349d;
            }
            i2++;
        }
        long nanoTime = TimeUtils.nanoTime();
        int i3 = this.f3351b.size;
        while (i < i3) {
            long nanoTime2 = TimeUtils.nanoTime();
            j -= nanoTime2 - nanoTime;
            ((PrioritySchedulableRecord) this.f3351b.get(i)).f3354a.run((((float) j) * prioritySchedulableRecord.f3349d) / f);
            i++;
            nanoTime = nanoTime2;
        }
    }

    public PriorityScheduler(int i) {
        super(i);
        this.f3348e = 0;
    }
}
