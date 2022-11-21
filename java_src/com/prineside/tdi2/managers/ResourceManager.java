package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ResourceManager extends Manager.ManagerAdapter {

    /* renamed from: d */
    public static final Color[] f10082d;
    public final ObjectMap<ResourceType, String> SHORT_RESOURCE_ALIASES;

    /* renamed from: a */
    public final StatisticsType[] f10083a;

    /* renamed from: b */
    public final String[] f10084b;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ResourceManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ResourceManager read() {
            return Game.f8589i.resourceManager;
        }
    }

    public Color getColor(ResourceType resourceType) {
        return f10082d[resourceType.ordinal()];
    }

    public StatisticsType getGainedCountStatistic(ResourceType resourceType) {
        return this.f10083a[resourceType.ordinal()];
    }

    static {
        Color[] colorArr = new Color[ResourceType.values.length];
        f10082d = colorArr;
        colorArr[ResourceType.SCALAR.ordinal()] = MaterialColor.GREEN.P500;
        colorArr[ResourceType.VECTOR.ordinal()] = MaterialColor.INDIGO.P400;
        colorArr[ResourceType.MATRIX.ordinal()] = MaterialColor.PURPLE.P400;
        colorArr[ResourceType.TENSOR.ordinal()] = MaterialColor.ORANGE.P500;
        colorArr[ResourceType.INFIAR.ordinal()] = MaterialColor.CYAN.P500;
    }

    public ResourceManager() {
        ResourceType[] resourceTypeArr = ResourceType.values;
        this.f10083a = new StatisticsType[resourceTypeArr.length];
        this.f10084b = new String[resourceTypeArr.length];
        ObjectMap<ResourceType, String> objectMap = new ObjectMap<>();
        this.SHORT_RESOURCE_ALIASES = objectMap;
        objectMap.put(ResourceType.SCALAR, "S");
        objectMap.put(ResourceType.VECTOR, "V");
        objectMap.put(ResourceType.MATRIX, "M");
        objectMap.put(ResourceType.TENSOR, "T");
        objectMap.put(ResourceType.INFIAR, "I");
        for (ResourceType resourceType : resourceTypeArr) {
            this.f10083a[resourceType.ordinal()] = StatisticsType.valueOf("RG_" + this.SHORT_RESOURCE_ALIASES.get(resourceType));
            this.f10084b[resourceType.ordinal()] = "resource_name_" + resourceType.name();
        }
    }

    public String getName(ResourceType resourceType) {
        return Game.f8589i.localeManager.i18n.get(this.f10084b[resourceType.ordinal()]);
    }
}
