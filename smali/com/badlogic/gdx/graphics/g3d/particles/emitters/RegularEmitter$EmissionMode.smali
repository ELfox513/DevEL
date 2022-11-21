.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public static final enum Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public static final enum EnabledUntilCycleEnd:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const-string v1, "Enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const-string v3, "EnabledUntilCycleEnd"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->EnabledUntilCycleEnd:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const-string v5, "Disabled"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->a:[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->a:[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object v0
.end method
