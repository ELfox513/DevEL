.class public final synthetic Lcom/prineside/tdi2/managers/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/m;->a:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/m;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput p3, p0, Lcom/prineside/tdi2/managers/m;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/m;->a:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/m;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget v2, p0, Lcom/prineside/tdi2/managers/m;->d:I

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->a(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V

    return-void
.end method
