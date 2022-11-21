.class public final enum Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapShiftButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

.field public static final enum LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

.field public static final enum RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

.field public static final enum UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

.field public static final synthetic a:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

.field public static final values:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v1, "DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->c()[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->a:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values()[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

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

.method public static synthetic c()[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->a:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    return-object v0
.end method
