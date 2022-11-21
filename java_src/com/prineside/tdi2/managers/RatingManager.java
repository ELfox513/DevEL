package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ScreenManager;
import com.prineside.tdi2.screens.LevelSelectScreen;
import com.prineside.tdi2.screens.MainMenuScreen;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class RatingManager extends Manager.ManagerAdapter {
    public boolean madeReview;
    public int showPromptAfterTime;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<RatingManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public RatingManager read() {
            return Game.f8589i.ratingManager;
        }
    }

    public boolean isMadeReview() {
        return this.madeReview;
    }

    public void madeReview(int i, String str) {
        this.madeReview = true;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        preferencesManager.set("ratingMadeReview", "true");
        preferencesManager.flush();
        Game.f8589i.actionResolver.logCustomEvent("made_review", new String[]{"stars", String.valueOf(i)});
    }

    public void promptAnsweredLater() {
        this.showPromptAfterTime = ((int) Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT)) * 2;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        preferencesManager.set("ratingPromptAfter", String.valueOf(this.showPromptAfterTime));
        preferencesManager.flush();
    }

    public void promptAnsweredNever() {
        this.showPromptAfterTime = ((int) Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT)) + 15552000;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        preferencesManager.set("ratingPromptAfter", String.valueOf(this.showPromptAfterTime));
        preferencesManager.flush();
    }

    public final void reload() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        try {
            PreferencesManager.SafePreferences preferencesManager2 = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
            if (preferencesManager2.contains("ratingMadeReview")) {
                this.madeReview = Boolean.valueOf(preferencesManager2.get("ratingMadeReview", "false")).booleanValue();
            }
            this.madeReview = Boolean.valueOf(preferencesManager.get("ratingMadeReview", "false")).booleanValue();
        } catch (Exception unused) {
            this.madeReview = true;
        }
        if (!this.madeReview) {
            try {
                this.showPromptAfterTime = Integer.valueOf(preferencesManager.get("ratingPromptAfter", "3600")).intValue();
            } catch (Exception unused2) {
                this.showPromptAfterTime = 3600;
            }
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.screenManager.addListener(new ScreenManager.ScreenManagerListener() { // from class: com.prineside.tdi2.managers.RatingManager.1
            @Override // com.prineside.tdi2.managers.ScreenManager.ScreenManagerListener
            public void screenChanged() {
                if (RatingManager.this.madeReview) {
                    return;
                }
                if (((Game.f8589i.screenManager.getCurrentScreen() instanceof MainMenuScreen) || (Game.f8589i.screenManager.getCurrentScreen() instanceof LevelSelectScreen)) && Gdx.app.getType() != Application.ApplicationType.Desktop && Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT) > RatingManager.this.showPromptAfterTime) {
                    Game.f8589i.uiManager.ratingForm.showRatePrompt();
                }
            }
        });
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.RatingManager.2
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                RatingManager.this.reload();
            }
        });
        reload();
    }

    public boolean shouldWeAskForReview() {
        StatisticsManager statisticsManager = Game.f8589i.statisticsManager;
        StatisticsType statisticsType = StatisticsType.PRT;
        if (((int) statisticsManager.getAllTime(statisticsType)) < 0 || ((int) Game.f8589i.statisticsManager.getAllTime(statisticsType)) > 62208000 || this.madeReview || Gdx.app.getType() == Application.ApplicationType.Desktop || Game.f8589i.statisticsManager.getAllTime(statisticsType) < 1800.0d || this.showPromptAfterTime - ((int) Game.f8589i.statisticsManager.getAllTime(statisticsType)) > 2592000) {
            return false;
        }
        return true;
    }
}
