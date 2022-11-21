.class public abstract enum Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/branch/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Selector:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

.field public static final enum Sequence:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

.field public static final synthetic a:[Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy$1;

    const-string v1, "Sequence"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->Sequence:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    new-instance v1, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy$2;

    const-string v3, "Selector"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->Selector:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->a:[Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/badlogic/gdx/ai/btree/branch/Parallel$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->a:[Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    return-object v0
.end method


# virtual methods
.method public abstract onChildFail(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract onChildSuccess(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method
