.class public final enum Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/TextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

.field public static final enum Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const-string v1, "Pixmap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    new-instance v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const-string v3, "Custom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->a:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->a:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method
