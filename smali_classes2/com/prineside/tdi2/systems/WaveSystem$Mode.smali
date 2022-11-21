.class public final enum Lcom/prineside/tdi2/systems/WaveSystem$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/WaveSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/WaveSystem$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

.field public static final enum PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/WaveSystem$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    const-string v1, "ENDLESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    const-string v1, "PREDEFINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    invoke-static {}, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->c()[Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->a:[Lcom/prineside/tdi2/systems/WaveSystem$Mode;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/WaveSystem$Mode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/WaveSystem$Mode;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/WaveSystem$Mode;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->a:[Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/WaveSystem$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    return-object v0
.end method
