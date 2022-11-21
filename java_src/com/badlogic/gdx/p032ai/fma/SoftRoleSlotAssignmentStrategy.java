package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BooleanArray;
/* renamed from: com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy */
/* loaded from: classes.dex */
public class SoftRoleSlotAssignmentStrategy<T extends Vector<T>> extends BoundedSlotAssignmentStrategy<T> {

    /* renamed from: a */
    public SlotCostProvider<T> f3287a;

    /* renamed from: b */
    public float f3288b;

    /* renamed from: c */
    public BooleanArray f3289c;

    /* renamed from: com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot */
    /* loaded from: classes.dex */
    public static class CostAndSlot<T extends Vector<T>> implements Comparable<CostAndSlot<T>> {

        /* renamed from: a */
        public float f3290a;

        /* renamed from: b */
        public int f3291b;

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((CostAndSlot) ((CostAndSlot) obj));
        }

        public int compareTo(CostAndSlot<T> costAndSlot) {
            float f = this.f3290a;
            float f2 = costAndSlot.f3290a;
            if (f < f2) {
                return -1;
            }
            return f > f2 ? 1 : 0;
        }

        public CostAndSlot(float f, int i) {
            this.f3290a = f;
            this.f3291b = i;
        }
    }

    /* renamed from: com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$MemberAndSlots */
    /* loaded from: classes.dex */
    public static class MemberAndSlots<T extends Vector<T>> implements Comparable<MemberAndSlots<T>> {

        /* renamed from: a */
        public FormationMember<T> f3292a;

        /* renamed from: b */
        public float f3293b = 0.0f;

        /* renamed from: d */
        public Array<CostAndSlot<T>> f3294d = new Array<>();

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((MemberAndSlots) ((MemberAndSlots) obj));
        }

        public int compareTo(MemberAndSlots<T> memberAndSlots) {
            float f = this.f3293b;
            float f2 = memberAndSlots.f3293b;
            if (f < f2) {
                return -1;
            }
            return f > f2 ? 1 : 0;
        }

        public MemberAndSlots(FormationMember<T> formationMember) {
            this.f3292a = formationMember;
        }
    }

    /* renamed from: com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$SlotCostProvider */
    /* loaded from: classes.dex */
    public interface SlotCostProvider<T extends Vector<T>> {
        float getCost(FormationMember<T> formationMember, int i);
    }

    public SoftRoleSlotAssignmentStrategy(SlotCostProvider<T> slotCostProvider) {
        this(slotCostProvider, Float.POSITIVE_INFINITY);
    }

    public SoftRoleSlotAssignmentStrategy(SlotCostProvider<T> slotCostProvider, float f) {
        this.f3287a = slotCostProvider;
        this.f3288b = f;
        this.f3289c = new BooleanArray();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
        r4 = r11.get(r6);
        r4.member = r3.f3292a;
        r4.slotNumber = r6;
        r10.f3289c.set(r6, true);
        r1 = r1 + 1;
     */
    @Override // com.badlogic.gdx.p032ai.fma.BoundedSlotAssignmentStrategy, com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateSlotAssignments(com.badlogic.gdx.utils.Array<com.badlogic.gdx.p032ai.fma.SlotAssignment<T>> r11) {
        /*
            r10 = this;
            com.badlogic.gdx.utils.Array r0 = new com.badlogic.gdx.utils.Array
            r0.<init>()
            int r1 = r11.size
            r2 = 0
            r3 = 0
        L9:
            if (r3 >= r1) goto L4e
            java.lang.Object r4 = r11.get(r3)
            com.badlogic.gdx.ai.fma.SlotAssignment r4 = (com.badlogic.gdx.p032ai.fma.SlotAssignment) r4
            com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$MemberAndSlots r5 = new com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$MemberAndSlots
            com.badlogic.gdx.ai.fma.FormationMember<T extends com.badlogic.gdx.math.Vector<T>> r6 = r4.member
            r5.<init>(r6)
            r6 = 0
        L19:
            if (r6 >= r1) goto L48
            com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$SlotCostProvider<T extends com.badlogic.gdx.math.Vector<T>> r7 = r10.f3287a
            com.badlogic.gdx.ai.fma.FormationMember<T extends com.badlogic.gdx.math.Vector<T>> r8 = r4.member
            float r7 = r7.getCost(r8, r6)
            float r8 = r10.f3288b
            int r8 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r8 < 0) goto L2a
            goto L45
        L2a:
            java.lang.Object r8 = r11.get(r6)
            com.badlogic.gdx.ai.fma.SlotAssignment r8 = (com.badlogic.gdx.p032ai.fma.SlotAssignment) r8
            com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot r9 = new com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot
            int r8 = r8.slotNumber
            r9.<init>(r7, r8)
            com.badlogic.gdx.utils.Array<com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot<T extends com.badlogic.gdx.math.Vector<T>>> r8 = r5.f3294d
            r8.add(r9)
            float r8 = r5.f3293b
            r9 = 1065353216(0x3f800000, float:1.0)
            float r7 = r7 + r9
            float r9 = r9 / r7
            float r8 = r8 + r9
            r5.f3293b = r8
        L45:
            int r6 = r6 + 1
            goto L19
        L48:
            r0.add(r5)
            int r3 = r3 + 1
            goto L9
        L4e:
            com.badlogic.gdx.utils.BooleanArray r3 = r10.f3289c
            int r4 = r3.size
            if (r1 <= r4) goto L59
            int r4 = r1 - r4
            r3.ensureCapacity(r4)
        L59:
            com.badlogic.gdx.utils.BooleanArray r3 = r10.f3289c
            r3.size = r1
            r3 = 0
        L5e:
            if (r3 >= r1) goto L68
            com.badlogic.gdx.utils.BooleanArray r4 = r10.f3289c
            r4.set(r3, r2)
            int r3 = r3 + 1
            goto L5e
        L68:
            r0.sort()
            r1 = 0
        L6c:
            int r3 = r0.size
            if (r1 >= r3) goto Lc5
            java.lang.Object r3 = r0.get(r1)
            com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$MemberAndSlots r3 = (com.badlogic.gdx.p032ai.fma.SoftRoleSlotAssignmentStrategy.MemberAndSlots) r3
            com.badlogic.gdx.utils.Array<com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot<T extends com.badlogic.gdx.math.Vector<T>>> r4 = r3.f3294d
            r4.sort()
            com.badlogic.gdx.utils.Array<com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot<T extends com.badlogic.gdx.math.Vector<T>>> r4 = r3.f3294d
            int r4 = r4.size
            r5 = 0
        L80:
            if (r5 >= r4) goto Lac
            com.badlogic.gdx.utils.Array<com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot<T extends com.badlogic.gdx.math.Vector<T>>> r6 = r3.f3294d
            java.lang.Object r6 = r6.get(r5)
            com.badlogic.gdx.ai.fma.SoftRoleSlotAssignmentStrategy$CostAndSlot r6 = (com.badlogic.gdx.p032ai.fma.SoftRoleSlotAssignmentStrategy.CostAndSlot) r6
            int r6 = r6.f3291b
            com.badlogic.gdx.utils.BooleanArray r7 = r10.f3289c
            boolean r7 = r7.get(r6)
            if (r7 != 0) goto La9
            java.lang.Object r4 = r11.get(r6)
            com.badlogic.gdx.ai.fma.SlotAssignment r4 = (com.badlogic.gdx.p032ai.fma.SlotAssignment) r4
            com.badlogic.gdx.ai.fma.FormationMember<T extends com.badlogic.gdx.math.Vector<T>> r3 = r3.f3292a
            r4.member = r3
            r4.slotNumber = r6
            com.badlogic.gdx.utils.BooleanArray r3 = r10.f3289c
            r4 = 1
            r3.set(r6, r4)
            int r1 = r1 + 1
            goto L6c
        La9:
            int r5 = r5 + 1
            goto L80
        Lac:
            com.badlogic.gdx.utils.GdxRuntimeException r11 = new com.badlogic.gdx.utils.GdxRuntimeException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "SoftRoleSlotAssignmentStrategy cannot find valid slot assignment for member "
            r0.append(r1)
            com.badlogic.gdx.ai.fma.FormationMember<T extends com.badlogic.gdx.math.Vector<T>> r1 = r3.f3292a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r11.<init>(r0)
            throw r11
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.p032ai.fma.SoftRoleSlotAssignmentStrategy.updateSlotAssignments(com.badlogic.gdx.utils.Array):void");
    }
}
