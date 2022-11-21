.class public final enum Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

.field public static final enum DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

.field public static final enum MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

.field public static final values:[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const-string v1, "DETAILED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const-string v1, "MAP_EDITOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-static {}, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->c()[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->a:[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-static {}, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->values()[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->values:[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->a:[Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    return-object v0
.end method
