package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonValue;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class BasicLevelStage {
    public final Color color;
    public final String name;
    public final String titleAlias;
    public boolean regular = true;
    public final Array<Requirement> showRequirements = new Array<>();
    public final Array<BasicLevel> levels = new Array<>(true, 1, BasicLevel.class);

    public String getTitle() {
        return Game.f8589i.localeManager.i18n.get(this.titleAlias);
    }

    public void sortLevels() {
        int i = 0;
        while (i < this.levels.size) {
            int i2 = i + 1;
            int i3 = i2;
            while (true) {
                Array<BasicLevel> array = this.levels;
                if (i3 < array.size) {
                    BasicLevel[] basicLevelArr = array.items;
                    if (basicLevelArr[i].stagePosition > basicLevelArr[i3].stagePosition) {
                        array.swap(i, i3);
                    }
                    i3++;
                }
            }
            i = i2;
        }
    }

    public static BasicLevelStage fromJson(JsonValue jsonValue) {
        String string = jsonValue.getString("name");
        String string2 = jsonValue.getString("title");
        boolean z = jsonValue.getBoolean("regular", false);
        Color color = new Color();
        Color.rgb888ToColor(color, Integer.parseInt(jsonValue.getString("color").substring(1), 16));
        color.f3889a = 1.0f;
        BasicLevelStage basicLevelStage = new BasicLevelStage(string, color, string2);
        basicLevelStage.regular = z;
        Iterator<JsonValue> iterator2 = jsonValue.get("showRequirements").iterator2();
        while (iterator2.hasNext()) {
            basicLevelStage.showRequirements.add(Requirement.fromJson(iterator2.next()));
        }
        return basicLevelStage;
    }

    public BasicLevelStage(String str, Color color, String str2) {
        this.name = str;
        this.color = color;
        this.titleAlias = str2;
    }
}
