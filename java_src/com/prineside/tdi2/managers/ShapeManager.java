package com.prineside.tdi2.managers;

import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Shape;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.shapes.BulletSmokeMultiLine;
import com.prineside.tdi2.shapes.ChainLightning;
import com.prineside.tdi2.shapes.Circle;
import com.prineside.tdi2.shapes.MultiLine;
import com.prineside.tdi2.shapes.PieChart;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.shapes.StraightMultiLine;
import com.prineside.tdi2.shapes.TrailMultiLine;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ShapeManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f10141F;

    /* renamed from: a */
    public final Shape.Factory[] f10142a;

    /* loaded from: classes2.dex */
    public static class Factories {
        public BulletSmokeMultiLine.BulletSmokeMultiLineFactory BULLET_SMOKE_MULTI_LINE;
        public ChainLightning.ChainLightningFactory CHAIN_LIGHTNING;
        public Circle.CircleFactory CIRCLE;
        public MultiLine.MultiLineFactory MULTI_LINE;
        public PieChart.PieChartFactory PIE_CHART;
        public RangeCircle.RangeCircleFactory RANGE_CIRCLE;
        public StraightMultiLine.StraightMultiLineFactory STRAIGHT_MULTI_LINE;
        public TrailMultiLine.TrailMultiLineFactory TRAIL_MULTI_LINE;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ShapeManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ShapeManager read() {
            return Game.f8589i.shapeManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Shape.Factory<? extends Shape> getFactory(ShapeType shapeType) {
        return this.f10142a[shapeType.ordinal()];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (Shape.Factory factory : this.f10142a) {
            factory.setup();
        }
    }

    public ShapeManager() {
        ShapeType[] shapeTypeArr = ShapeType.values;
        Shape.Factory[] factoryArr = new Shape.Factory[shapeTypeArr.length];
        this.f10142a = factoryArr;
        Factories factories = new Factories();
        this.f10141F = factories;
        int ordinal = ShapeType.MULTI_LINE.ordinal();
        MultiLine.MultiLineFactory multiLineFactory = new MultiLine.MultiLineFactory();
        factories.MULTI_LINE = multiLineFactory;
        factoryArr[ordinal] = multiLineFactory;
        int ordinal2 = ShapeType.TRAIL_MULTI_LINE.ordinal();
        TrailMultiLine.TrailMultiLineFactory trailMultiLineFactory = new TrailMultiLine.TrailMultiLineFactory();
        factories.TRAIL_MULTI_LINE = trailMultiLineFactory;
        factoryArr[ordinal2] = trailMultiLineFactory;
        int ordinal3 = ShapeType.CIRCLE.ordinal();
        Circle.CircleFactory circleFactory = new Circle.CircleFactory();
        factories.CIRCLE = circleFactory;
        factoryArr[ordinal3] = circleFactory;
        int ordinal4 = ShapeType.RANGE_CIRCLE.ordinal();
        RangeCircle.RangeCircleFactory rangeCircleFactory = new RangeCircle.RangeCircleFactory();
        factories.RANGE_CIRCLE = rangeCircleFactory;
        factoryArr[ordinal4] = rangeCircleFactory;
        int ordinal5 = ShapeType.BULLET_SMOKE_MULTI_LINE.ordinal();
        BulletSmokeMultiLine.BulletSmokeMultiLineFactory bulletSmokeMultiLineFactory = new BulletSmokeMultiLine.BulletSmokeMultiLineFactory();
        factories.BULLET_SMOKE_MULTI_LINE = bulletSmokeMultiLineFactory;
        factoryArr[ordinal5] = bulletSmokeMultiLineFactory;
        int ordinal6 = ShapeType.PIE_CHART.ordinal();
        PieChart.PieChartFactory pieChartFactory = new PieChart.PieChartFactory();
        factories.PIE_CHART = pieChartFactory;
        factoryArr[ordinal6] = pieChartFactory;
        int ordinal7 = ShapeType.CHAIN_LIGHTNING.ordinal();
        ChainLightning.ChainLightningFactory chainLightningFactory = new ChainLightning.ChainLightningFactory();
        factories.CHAIN_LIGHTNING = chainLightningFactory;
        factoryArr[ordinal7] = chainLightningFactory;
        int ordinal8 = ShapeType.STRAIGHT_MULTI_LINE.ordinal();
        StraightMultiLine.StraightMultiLineFactory straightMultiLineFactory = new StraightMultiLine.StraightMultiLineFactory();
        factories.STRAIGHT_MULTI_LINE = straightMultiLineFactory;
        factoryArr[ordinal8] = straightMultiLineFactory;
        for (ShapeType shapeType : shapeTypeArr) {
            if (this.f10142a[shapeType.ordinal()] == null) {
                throw new RuntimeException("Not all shape factories were created");
            }
        }
    }
}
