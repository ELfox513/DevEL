package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.shapes.PieChart;
/* renamed from: com.prineside.tdi2.ui.actors.ButtonHoldHint */
/* loaded from: classes2.dex */
public class ButtonHoldHint extends PieChartActor {

    /* renamed from: P */
    public final PieChart.ChartEntryConfig f12487P;

    /* renamed from: Q */
    public final PieChart.ChartEntryConfig f12488Q;

    /* renamed from: R */
    public final float f12489R;

    /* renamed from: S */
    public final float f12490S;

    /* renamed from: T */
    public final float f12491T;
    public boolean disappearing = false;

    /* renamed from: N */
    public float f12485N = 0.0f;

    /* renamed from: O */
    public float f12486O = 0.0f;

    @Override // com.prineside.tdi2.p036ui.actors.PieChartActor, com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float f2;
        float f3 = 0.0f;
        if (!this.disappearing) {
            float deltaTime = this.f12485N + Gdx.graphics.getDeltaTime();
            this.f12485N = deltaTime;
            float f4 = 0.1f;
            float f5 = this.f12491T;
            if (f5 < 0.2f) {
                f4 = 0.0f;
            } else if (f5 < 0.5f) {
                f4 = 0.05f;
            }
            float f6 = (deltaTime - f4) / (f5 - f4);
            if (f6 > 1.0f) {
                f6 = 1.0f;
            }
            if (f6 >= 0.0f) {
                f3 = f6;
            }
            PieChart.ChartEntryConfig chartEntryConfig = this.f12487P;
            chartEntryConfig.color.f3889a = 0.25f * f3;
            chartEntryConfig.value = f3;
            PieChart.ChartEntryConfig chartEntryConfig2 = this.f12488Q;
            chartEntryConfig2.value = 1.0f - f3;
            chartEntryConfig2.color.f3889a = f3 * 0.14f;
        } else {
            float f7 = this.f12486O;
            if (f7 <= -1.0f) {
                return;
            }
            float deltaTime2 = f7 + Gdx.graphics.getDeltaTime();
            this.f12486O = deltaTime2;
            PieChart.ChartEntryConfig chartEntryConfig3 = this.f12487P;
            chartEntryConfig3.color.f3889a = 1.0f;
            chartEntryConfig3.value = 1.0f;
            this.f12488Q.value = 0.0f;
            if (deltaTime2 <= 0.2f) {
                float f8 = deltaTime2 / 0.2f;
                if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
                    f2 = 12.0f;
                } else {
                    f2 = 18.0f;
                }
                this.chart.innerRadius = f2 + (f8 * f2);
            } else {
                this.f12486O = -2.0f;
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.actors.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ButtonHoldHint.this.remove();
                    }
                });
                return;
            }
        }
        this.chart.requestVerticesRebuild();
        super.draw(batch, f);
    }

    public ButtonHoldHint(float f, float f2, float f3) {
        float f4;
        float f5;
        this.f12491T = f3;
        this.f12489R = f;
        this.f12490S = f2;
        Array<PieChart.ChartEntryConfig> array = new Array<>();
        PieChart.ChartEntryConfig chartEntryConfig = new PieChart.ChartEntryConfig(Color.WHITE.cpy(), 0.0f, 0.0f);
        this.f12487P = chartEntryConfig;
        PieChart.ChartEntryConfig chartEntryConfig2 = new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 1.0f), 1.0f, 0.0f);
        this.f12488Q = chartEntryConfig2;
        array.add(chartEntryConfig);
        array.add(chartEntryConfig2);
        PieChart pieChart = this.chart;
        Application.ApplicationType type = Gdx.app.getType();
        Application.ApplicationType applicationType = Application.ApplicationType.Desktop;
        if (type == applicationType) {
            f4 = 12.0f;
        } else {
            f4 = 18.0f;
        }
        pieChart.innerRadius = f4;
        PieChart pieChart2 = this.chart;
        pieChart2.rotationDirection = -1.0f;
        pieChart2.angleShiftRad = 0.7853982f;
        if (Gdx.app.getType() == applicationType) {
            f5 = 48.0f;
        } else {
            f5 = 72.0f;
        }
        setSize(f5, f5);
        float f6 = f5 * 0.5f;
        setPosition(f - f6, (f2 - f6) + (Gdx.app.getType() != applicationType ? 160.0f : 0.0f));
        setConfigs(array);
    }
}
