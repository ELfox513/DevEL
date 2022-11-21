package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.p033ui.Widget;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.shapes.PieChart;
/* renamed from: com.prineside.tdi2.ui.actors.PieChartActor */
/* loaded from: classes2.dex */
public class PieChartActor extends Widget implements Disposable {

    /* renamed from: I */
    public Array<PieChart.ChartEntryConfig> f12663I;

    /* renamed from: J */
    public float f12664J;

    /* renamed from: K */
    public float f12665K;

    /* renamed from: L */
    public float f12666L = -1.0f;

    /* renamed from: M */
    public int f12667M = -1;
    public final PieChart chart = ((PieChart.PieChartFactory) Game.f8589i.shapeManager.getFactory(ShapeType.PIE_CHART)).obtain();

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ((PieChart.PieChartFactory) Game.f8589i.shapeManager.getFactory(ShapeType.PIE_CHART)).free(this.chart);
    }

    public Array<PieChart.ChartEntryConfig> getConfigs() {
        return this.f12663I;
    }

    public void setConfigs(Array<PieChart.ChartEntryConfig> array) {
        this.f12663I = array;
        this.f12666L = -1.0f;
    }

    public void setSegmentCount(int i) {
        this.f12667M = i;
        this.f12666L = -1.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float width;
        int i;
        super.draw(batch, f);
        if (this.f12663I == null) {
            return;
        }
        float x = getX() + (getWidth() / 2.0f);
        float y = getY() + (getHeight() / 2.0f);
        if (getWidth() > getHeight()) {
            width = getHeight();
        } else {
            width = getWidth();
        }
        float f2 = width / 2.0f;
        if (x != this.f12664J || y != this.f12665K || f2 != this.f12666L) {
            int i2 = this.f12667M;
            if (i2 == -1) {
                i = (int) StrictMath.max(2.0f * f2, 8.0f);
            } else {
                i = i2;
            }
            this.chart.setup(x, y, f2, i, this.f12663I);
            this.f12664J = x;
            this.f12665K = y;
            this.f12666L = f2;
        }
        this.chart.draw(batch);
    }
}
