.class synthetic Lcom/prineside/tdi2/systems/MapEditorSystem$6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapEditorSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values()[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$6;->a:[I

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$6;->a:[I

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$6;->a:[I

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$6;->a:[I

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
