package com.badlogic.gdx.p032ai.sched;

import com.badlogic.gdx.p032ai.sched.SchedulerBase;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.TimeUtils;
/* renamed from: com.badlogic.gdx.ai.sched.LoadBalancingScheduler */
/* loaded from: classes.dex */
public class LoadBalancingScheduler extends SchedulerBase<SchedulerBase.SchedulableRecord> {

    /* renamed from: e */
    public int f3347e;

    @Override // com.badlogic.gdx.p032ai.sched.Scheduler
    public void add(Schedulable schedulable, int i, int i2) {
        this.f3350a.add(new SchedulerBase.SchedulableRecord(schedulable, i, i2));
    }

    @Override // com.badlogic.gdx.p032ai.sched.Scheduler
    public void addWithAutomaticPhasing(Schedulable schedulable, int i) {
        add(schedulable, i, m24377a(i));
    }

    @Override // com.badlogic.gdx.p032ai.sched.Schedulable
    public void run(long j) {
        this.f3347e++;
        int i = 0;
        this.f3351b.size = 0;
        int i2 = 0;
        while (true) {
            Array<T> array = this.f3350a;
            if (i2 >= array.size) {
                break;
            }
            SchedulerBase.SchedulableRecord schedulableRecord = (SchedulerBase.SchedulableRecord) array.get(i2);
            if ((this.f3347e + schedulableRecord.f3356c) % schedulableRecord.f3355b == 0) {
                this.f3351b.add(schedulableRecord);
            }
            i2++;
        }
        long nanoTime = TimeUtils.nanoTime();
        int i3 = this.f3351b.size;
        while (i < i3) {
            long nanoTime2 = TimeUtils.nanoTime();
            j -= nanoTime2 - nanoTime;
            ((SchedulerBase.SchedulableRecord) this.f3351b.get(i)).f3354a.run(j / (i3 - i));
            i++;
            nanoTime = nanoTime2;
        }
    }

    public LoadBalancingScheduler(int i) {
        super(i);
        this.f3347e = 0;
    }
}
