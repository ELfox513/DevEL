.class public final enum Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ibxm/WavInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL_SONG:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

.field public static final enum INTRO_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

.field public static final enum LOOPING_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

.field public static final synthetic a:[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

.field public static final values:[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    const-string v1, "FULL_SONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->FULL_SONG:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    new-instance v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    const-string v1, "INTRO_PART"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->INTRO_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    new-instance v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    const-string v1, "LOOPING_PART"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->LOOPING_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    invoke-static {}, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->c()[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->a:[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    invoke-static {}, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->values()[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->values:[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

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

.method public static synthetic c()[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    sget-object v1, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->FULL_SONG:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->INTRO_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->LOOPING_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->a:[Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    return-object v0
.end method
