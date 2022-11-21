.class public final enum Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field public static final enum NONE:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field public static final synthetic a:[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->NONE:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    new-instance v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    const-string v3, "ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->a:[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->a:[Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method
