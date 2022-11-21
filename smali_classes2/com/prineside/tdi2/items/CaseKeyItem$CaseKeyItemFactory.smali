.class public Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/CaseKeyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseKeyItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/CaseKeyItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[Lcom/prineside/tdi2/items/CaseKeyItem;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/items/CaseKeyItem;

    iput-object v1, p0, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->a:[Lcom/prineside/tdi2/items/CaseKeyItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->a:[Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/items/CaseKeyItem;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/prineside/tdi2/items/CaseKeyItem;-><init>(Lcom/prineside/tdi2/enums/CaseType;Lcom/prineside/tdi2/items/CaseKeyItem$1;)V

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->a:[Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->createDefault()Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/CaseKeyItem;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/CaseKeyItem;
    .locals 1

    const-string v0, "caseType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/CaseType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/CaseType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method
