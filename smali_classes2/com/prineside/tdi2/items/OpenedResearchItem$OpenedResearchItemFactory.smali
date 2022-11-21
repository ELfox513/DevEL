.class public Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/OpenedResearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenedResearchItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/OpenedResearchItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/items/OpenedResearchItem;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/items/OpenedResearchItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/items/OpenedResearchItem;-><init>(Lcom/prineside/tdi2/enums/ResearchType;Lcom/prineside/tdi2/items/OpenedResearchItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;->createDefault()Lcom/prineside/tdi2/items/OpenedResearchItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/OpenedResearchItem;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/ResearchType;->values:[Lcom/prineside/tdi2/enums/ResearchType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;->create(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/items/OpenedResearchItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/OpenedResearchItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/OpenedResearchItem;
    .locals 1

    const-string v0, "researchType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;->create(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/items/OpenedResearchItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
