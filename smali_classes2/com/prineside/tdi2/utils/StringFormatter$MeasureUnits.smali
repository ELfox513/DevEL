.class public final enum Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/StringFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum degrees:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum degrees_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum percent:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum percent_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum seconds:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum tiles:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum tiles_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final enum units_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

.field public static final values:[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "tiles"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->tiles:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "degrees_per_second"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->degrees_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "tiles_per_second"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->tiles_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "seconds"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->seconds:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "percent"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->percent:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "units_per_second"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->units_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "percent_per_second"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->percent_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    new-instance v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const-string v1, "degrees"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->degrees:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    invoke-static {}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->c()[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->a:[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    invoke-static {}, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->values()[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->values:[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

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

.method public static synthetic c()[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->tiles:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->degrees_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->tiles_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->seconds:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->percent:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->units_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->percent_per_second:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->degrees:Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->a:[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    return-object v0
.end method
