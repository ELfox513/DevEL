package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.BossTileType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.InterpolationType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.PredefinedCoreTileType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.RequirementType;
import com.prineside.tdi2.enums.ResearchCategoryType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.SoundType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.enums.TrophyType;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public class GameResourcesJsonGenerator {
    public void run() {
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        json.writeValue("generatedInBuild", (Object) 184);
        json.writeObjectStart("enums");
        m19848a(json, AbilityType.class);
        m19848a(json, AchievementType.class);
        m19848a(json, ActionType.class);
        m19848a(json, BlueprintType.class);
        m19848a(json, BossTileType.class);
        m19848a(json, BossType.class);
        m19848a(json, BuffType.class);
        m19848a(json, BuildingType.class);
        m19848a(json, CaseType.class);
        m19848a(json, DamageType.class);
        m19848a(json, DifficultyMode.class);
        m19848a(json, EnemyType.class);
        m19848a(json, ExplosionType.class);
        m19848a(json, GameValueType.class);
        m19848a(json, GateType.class);
        m19848a(json, GeneralizedTowerStatType.class);
        m19848a(json, InterpolationType.class);
        m19848a(json, ItemCategoryType.class);
        m19848a(json, ItemDataType.class);
        m19848a(json, ItemSortingType.class);
        m19848a(json, ItemSubcategoryType.class);
        m19848a(json, ItemType.class);
        m19848a(json, LimitedParticleType.class);
        m19848a(json, MinerType.class);
        m19848a(json, ModifierType.class);
        m19848a(json, PredefinedCoreTileType.class);
        m19848a(json, ProjectileType.class);
        m19848a(json, RarityType.class);
        m19848a(json, RequirementType.class);
        m19848a(json, ResearchCategoryType.class);
        m19848a(json, ResearchType.class);
        m19848a(json, ResourceType.class);
        m19848a(json, ShapeType.class);
        m19848a(json, SoundType.class);
        m19848a(json, SpaceTileBonusType.class);
        m19848a(json, StaticSoundType.class);
        m19848a(json, StatisticsType.class);
        m19848a(json, TileType.class);
        m19848a(json, TowerStatType.class);
        m19848a(json, TowerType.class);
        m19848a(json, TrophyType.class);
        json.writeObjectEnd();
        json.writeObjectStart("enumTitles");
        json.writeArrayStart(StatisticsType.class.getSimpleName());
        for (StatisticsType statisticsType : (StatisticsType[]) StatisticsType.class.getEnumConstants()) {
            json.writeValue(Game.f8589i.statisticsManager.getStatisticsTitle(statisticsType));
        }
        json.writeObjectEnd();
        json.writeObjectEnd();
        json.writeObjectEnd();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("res/game-resources.json"));
            bufferedWriter.write(json.prettyPrint(stringWriter.toString()));
            bufferedWriter.close();
        } catch (Exception e) {
            Logger.error("GameResourcesJsonGenerator", "failed to write resources file", e);
        }
        Logger.log("GameResourcesJsonGenerator", "Done");
    }

    /* renamed from: a */
    public final void m19848a(Json json, Class<? extends Enum> cls) {
        json.writeArrayStart(cls.getSimpleName());
        for (Enum r2 : (Enum[]) cls.getEnumConstants()) {
            json.writeValue(r2.name());
        }
        json.writeArrayEnd();
    }
}
