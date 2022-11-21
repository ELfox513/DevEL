package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ResourceItem extends Item {
    public final ResourceType resourceType;

    /* renamed from: com.prineside.tdi2.items.ResourceItem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C16891 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9505a;

        static {
            int[] iArr = new int[ResourceType.values().length];
            f9505a = iArr;
            try {
                iArr[ResourceType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9505a[ResourceType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9505a[ResourceType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9505a[ResourceType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9505a[ResourceType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ResourceItemFactory implements Item.Factory<ResourceItem> {

        /* renamed from: a */
        public final ResourceItem[] f9506a;

        public ResourceItem create(ResourceType resourceType) {
            return this.f9506a[resourceType.ordinal()];
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public ResourceItem createDefault() {
            return create(ResourceType.values[0]);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public ResourceItem fromJson(JsonValue jsonValue) {
            return create(ResourceType.valueOf(jsonValue.getString("resourceType")));
        }

        public ResourceItemFactory() {
            ResourceType[] resourceTypeArr = ResourceType.values;
            this.f9506a = new ResourceItem[resourceTypeArr.length];
            for (ResourceType resourceType : resourceTypeArr) {
                this.f9506a[resourceType.ordinal()] = new ResourceItem(resourceType, null);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ResourceItem> {
        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends ResourceItem>) cls);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, ResourceItem resourceItem) {
            kryo.writeObject(output, resourceItem.resourceType);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public ResourceItem read(Kryo kryo, Input input, Class<? extends ResourceItem> cls) {
            return Item.C1543D.F_RESOURCE.create((ResourceType) kryo.readObject(input, ResourceType.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ResourceItem read() {
            throw new IllegalStateException("Do not use");
        }
    }

    public /* synthetic */ ResourceItem(ResourceType resourceType, C16891 c16891) {
        this(resourceType);
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_RESOURCE.create(this.resourceType);
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_RESOURCE.create(((ResourceItem) item).resourceType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_RESOURCE");
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_RESOURCE;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.resourceManager.getName(this.resourceType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.RESOURCE;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public ResourceItem(ResourceType resourceType) {
        if (resourceType != null) {
            this.resourceType = resourceType;
            return;
        }
        throw new IllegalArgumentException("ResourceType is null");
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        int i = C16891.f9505a[this.resourceType.ordinal()];
        int i2 = 4;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            i2 = 1;
                        } else {
                            i2 = 12;
                        }
                    } else {
                        i2 = 10;
                    }
                } else {
                    i2 = 8;
                }
            } else {
                i2 = 6;
            }
        }
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, i2));
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            AssetManager assetManager = Game.f8589i.assetManager;
            String[] strArr = Resource.TEXTURE_REGION_NAMES;
            Image image = new Image(assetManager.getDrawable(strArr[this.resourceType.ordinal()]));
            image.setSize(f, f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable(strArr[this.resourceType.ordinal()]));
            image2.setSize(f, f);
            image2.setColor(Game.f8589i.resourceManager.getColor(this.resourceType));
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[this.resourceType.ordinal()]));
        image3.setSize(f, f);
        image3.setColor(Game.f8589i.resourceManager.getColor(this.resourceType));
        return image3;
    }

    @Override // com.prineside.tdi2.Item
    public double getPriceInAcceleratorsForResearchReset(int i) {
        int i2 = C16891.f9505a[this.resourceType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            i *= 12;
                        }
                    } else {
                        i *= 10;
                    }
                } else {
                    i *= 8;
                }
            } else {
                i *= 6;
            }
        } else {
            i *= 4;
        }
        return Item.C1543D.GREEN_PAPER.getPriceInAcceleratorsForResearchReset(i);
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        int i = C16891.f9505a[this.resourceType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return null;
                        }
                        return RarityType.LEGENDARY;
                    }
                    return RarityType.EPIC;
                }
                return RarityType.VERY_RARE;
            }
            return RarityType.RARE;
        }
        return RarityType.COMMON;
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.resourceType.ordinal());
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || ((ResourceItem) item).resourceType != this.resourceType) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("resourceType", this.resourceType.name());
    }
}
