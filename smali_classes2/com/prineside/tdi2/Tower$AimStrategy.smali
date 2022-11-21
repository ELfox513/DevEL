.class public final enum Lcom/prineside/tdi2/Tower$AimStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Tower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AimStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/Tower$AimStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final enum LAST:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final enum NEAREST:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final enum RANDOM:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final enum STRONGEST:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final enum WEAKEST:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final synthetic a:[Lcom/prineside/tdi2/Tower$AimStrategy;

.field public static final values:[Lcom/prineside/tdi2/Tower$AimStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Tower$AimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    new-instance v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v1, "LAST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Tower$AimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->LAST:Lcom/prineside/tdi2/Tower$AimStrategy;

    new-instance v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v1, "WEAKEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Tower$AimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->WEAKEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    new-instance v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v1, "STRONGEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Tower$AimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->STRONGEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    new-instance v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v1, "NEAREST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Tower$AimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->NEAREST:Lcom/prineside/tdi2/Tower$AimStrategy;

    new-instance v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v1, "RANDOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Tower$AimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->RANDOM:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-static {}, Lcom/prineside/tdi2/Tower$AimStrategy;->c()[Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->a:[Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-static {}, Lcom/prineside/tdi2/Tower$AimStrategy;->values()[Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

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

.method public static synthetic c()[Lcom/prineside/tdi2/Tower$AimStrategy;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/Tower$AimStrategy;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->LAST:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->WEAKEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->STRONGEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->NEAREST:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->RANDOM:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Tower$AimStrategy;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/Tower$AimStrategy;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/Tower$AimStrategy;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->a:[Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/Tower$AimStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Tower$AimStrategy;

    return-object v0
.end method
