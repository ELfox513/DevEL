.class public Lcom/prineside/tdi2/managers/ResourceManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ResourceManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ResourceManager$Serializer;
    }
.end annotation


# static fields
.field public static final d:[Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final SHORT_RESOURCE_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ResourceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final a:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/managers/ResourceManager;->d:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P400:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResourceManager;->a:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResourceManager;->b:[Ljava/lang/String;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResourceManager;->SHORT_RESOURCE_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    const-string v3, "S"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    const-string v3, "V"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    const-string v3, "M"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    const-string v3, "T"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ResourceManager;->a:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/prineside/tdi2/managers/ResourceManager;->SHORT_RESOURCE_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ResourceManager;->b:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource_name_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ResourceManager;->d:[Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getGainedCountStatistic(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResourceManager;->a:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getName(Lcom/prineside/tdi2/enums/ResourceType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ResourceManager;->b:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
