.class public final enum Lcom/badlogic/gdx/ai/btree/Task$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/ai/btree/Task$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lcom/badlogic/gdx/ai/btree/Task$Status;

.field public static final enum FAILED:Lcom/badlogic/gdx/ai/btree/Task$Status;

.field public static final enum FRESH:Lcom/badlogic/gdx/ai/btree/Task$Status;

.field public static final enum RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

.field public static final enum SUCCEEDED:Lcom/badlogic/gdx/ai/btree/Task$Status;

.field public static final synthetic a:[Lcom/badlogic/gdx/ai/btree/Task$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/ai/btree/Task$Status;

    const-string v1, "FRESH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/btree/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->FRESH:Lcom/badlogic/gdx/ai/btree/Task$Status;

    new-instance v1, Lcom/badlogic/gdx/ai/btree/Task$Status;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/ai/btree/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    new-instance v3, Lcom/badlogic/gdx/ai/btree/Task$Status;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/ai/btree/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/ai/btree/Task$Status;->FAILED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    new-instance v5, Lcom/badlogic/gdx/ai/btree/Task$Status;

    const-string v7, "SUCCEEDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/ai/btree/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/ai/btree/Task$Status;->SUCCEEDED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    new-instance v7, Lcom/badlogic/gdx/ai/btree/Task$Status;

    const-string v9, "CANCELLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/ai/btree/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/ai/btree/Task$Status;->CANCELLED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/badlogic/gdx/ai/btree/Task$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/badlogic/gdx/ai/btree/Task$Status;->a:[Lcom/badlogic/gdx/ai/btree/Task$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/Task$Status;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/ai/btree/Task$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/ai/btree/Task$Status;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/ai/btree/Task$Status;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->a:[Lcom/badlogic/gdx/ai/btree/Task$Status;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/ai/btree/Task$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/ai/btree/Task$Status;

    return-object v0
.end method
