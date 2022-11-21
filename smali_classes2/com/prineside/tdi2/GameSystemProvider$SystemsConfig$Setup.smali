.class public final enum Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Setup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

.field public static final enum MAP_EDITOR:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

.field public static final synthetic a:[Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    const-string v1, "GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    new-instance v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    const-string v1, "MAP_EDITOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->MAP_EDITOR:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-static {}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->c()[Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->a:[Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

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

.method public static synthetic c()[Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    sget-object v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->MAP_EDITOR:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->a:[Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    return-object v0
.end method
