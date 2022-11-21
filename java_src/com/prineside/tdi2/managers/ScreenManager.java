package com.prineside.tdi2.managers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.luaj.Lua;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.screens.AboutScreen;
import com.prineside.tdi2.screens.AccountScreen;
import com.prineside.tdi2.screens.CrashReportScreen;
import com.prineside.tdi2.screens.CustomMapSelectScreen;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.screens.HotkeyScreen;
import com.prineside.tdi2.screens.LanguageSelectScreen;
import com.prineside.tdi2.screens.LevelSelectScreen;
import com.prineside.tdi2.screens.LoadingScreen;
import com.prineside.tdi2.screens.MainMenuScreen;
import com.prineside.tdi2.screens.MapEditorScreen;
import com.prineside.tdi2.screens.MoneyScreen;
import com.prineside.tdi2.screens.ResearchesScreen;
import com.prineside.tdi2.screens.SettingsScreen;
import com.prineside.tdi2.screens.StatisticsScreen;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.GameSyncLoader;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ScreenManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public Screen f10085a;

    /* renamed from: b */
    public final DelayedRemovalArray<ScreenManagerListener> f10086b = new DelayedRemovalArray<>(false, 1);

    /* loaded from: classes2.dex */
    public interface ScreenManagerListener {
        void screenChanged();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ScreenManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ScreenManager read() {
            return Game.f8589i.screenManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Screen getCurrentScreen() {
        return this.f10085a;
    }

    public void goToAccountScreen() {
        if (Config.isModdingMode()) {
            Game.f8589i.uiManager.notifications.add("Not available in modding mode", null, null, StaticSoundType.FAIL);
            return;
        }
        m21503a();
        setScreen(new AccountScreen());
    }

    public void goToLevelSelectScreen() {
        m21503a();
        setScreen(new LevelSelectScreen());
    }

    public void goToMapEditorScreen(UserMap userMap) {
        m21503a();
        setScreen(new MapEditorScreen(userMap));
    }

    public void goToResearchesScreen() {
        m21503a();
        setScreen(new ResearchesScreen());
    }

    /* renamed from: a */
    public final void m21503a() {
        Screen screen = this.f10085a;
        if (screen != null) {
            screen.dispose();
            this.f10085a = null;
        }
        Game.f8589i.actionResolver.getInitConfigManager().saveIfRequired();
    }

    public void addListener(ScreenManagerListener screenManagerListener) {
        if (screenManagerListener != null) {
            if (!this.f10086b.contains(screenManagerListener, true)) {
                this.f10086b.add(screenManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void goToMainMenu() {
        Game.f8589i.assertInMainThread();
        Game.f8589i.statisticsManager.save();
        m21503a();
        if (!Game.f8589i.localeManager.m21582b()) {
            goToLanguageSelectScreen();
        } else {
            setScreen(new MainMenuScreen());
        }
    }

    public void goToAboutScreen() {
        m21503a();
        setScreen(new AboutScreen());
    }

    public void goToCrashReportScreen(String str, String str2, String str3, String str4, String str5) {
        m21503a();
        setScreen(new CrashReportScreen(str, str2, str3, str4, str5));
    }

    public void goToCustomMapSelectScreen() {
        m21503a();
        setScreen(new CustomMapSelectScreen());
    }

    public void goToHotkeyEditorScreen() {
        m21503a();
        setScreen(new HotkeyScreen());
    }

    public void goToLanguageSelectScreen() {
        m21503a();
        setScreen(new LanguageSelectScreen());
    }

    public void goToLevelSelectScreen(BasicLevel basicLevel) {
        m21503a();
        setScreen(new LevelSelectScreen(basicLevel));
    }

    public void goToLoadingScreen(GameSyncLoader gameSyncLoader) {
        m21503a();
        setScreen(new LoadingScreen(gameSyncLoader));
    }

    public void goToMapEditorScreen(BasicLevel basicLevel) {
        m21503a();
        if (Game.f8589i.basicLevelManager.mapEditingAvailable()) {
            setScreen(new MapEditorScreen(basicLevel));
        } else {
            Game.f8589i.uiManager.dialog.showAlert("Not available on this OS or you are not in developer mode");
        }
    }

    public void goToMoneyScreen() {
        if (Config.isModdingMode()) {
            Game.f8589i.uiManager.notifications.add("Not available in modding mode", null, null, StaticSoundType.FAIL);
        } else {
            setScreen(new MoneyScreen(this.f10085a));
        }
    }

    public void goToResearchesScreen(ResearchType researchType) {
        m21503a();
        setScreen(new ResearchesScreen(researchType));
    }

    public void goToSettingsScreen() {
        m21503a();
        setScreen(new SettingsScreen());
    }

    public void goToStatisticsScreen() {
        m21503a();
        setScreen(new StatisticsScreen());
    }

    public void setNoScreen() {
        m21503a();
        setScreen(null);
    }

    public void setScreen(Screen screen) {
        m21503a();
        Lua.resetCache();
        Game.f8589i.setScreen(screen);
        this.f10085a = screen;
        if (!Config.isHeadless()) {
            Logger.log("ScreenManager", "setting screen: " + screen.getClass().getSimpleName());
        }
        this.f10086b.begin();
        Array.ArrayIterator<ScreenManagerListener> it = this.f10086b.iterator();
        while (it.hasNext()) {
            it.next().screenChanged();
        }
        this.f10086b.end();
    }

    public void startNewBasicLevel(BasicLevel basicLevel, AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
        m21503a();
        DifficultyMode difficultyMode = Game.f8589i.progressManager.getDifficultyMode();
        setScreen(new GameScreen(basicLevel, difficultyMode, Game.f8589i.progressManager.getDifficultyModeDiffMultiplier(difficultyMode), selectedAbilitiesConfiguration, -1L, null));
    }

    public void startNewDailyLevel(DailyQuestManager.DailyQuestLevel dailyQuestLevel) {
        if (Config.isModdingMode()) {
            return;
        }
        m21503a();
        setScreen(new GameScreen(dailyQuestLevel));
    }

    public void startNewUserLevel(UserMap userMap, AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
        m21503a();
        DifficultyMode difficultyMode = Game.f8589i.progressManager.getDifficultyMode();
        setScreen(new GameScreen(userMap, difficultyMode, Game.f8589i.progressManager.getDifficultyModeDiffMultiplier(difficultyMode), selectedAbilitiesConfiguration, -1L, Game.f8589i.userMapManager.getDefaultBosses(), null, null));
    }

    public void goToAccountScreen(AccountScreen.ScreenType screenType) {
        if (Config.isModdingMode()) {
            Game.f8589i.uiManager.notifications.add("Not available in modding mode", null, null, StaticSoundType.FAIL);
            return;
        }
        m21503a();
        setScreen(new AccountScreen(screenType));
    }
}
