.class Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$AttrInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$AttrInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Metadata;->a:I

    if-gez p2, :cond_1

    const p2, 0x7fffffff

    :cond_1
    iput p2, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Metadata;->b:I

    iput-object p3, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Metadata;->c:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method
