.class public final enum Lcom/badlogic/gdx/math/Plane$PlaneSide;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Plane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaneSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/math/Plane$PlaneSide;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

.field public static final enum Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

.field public static final enum OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

.field public static final synthetic a:[Lcom/badlogic/gdx/math/Plane$PlaneSide;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const-string v1, "OnPlane"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane$PlaneSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    new-instance v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const-string v3, "Back"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/math/Plane$PlaneSide;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    new-instance v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const-string v5, "Front"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/math/Plane$PlaneSide;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/math/Plane$PlaneSide;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->a:[Lcom/badlogic/gdx/math/Plane$PlaneSide;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->a:[Lcom/badlogic/gdx/math/Plane$PlaneSide;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/math/Plane$PlaneSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object v0
.end method
