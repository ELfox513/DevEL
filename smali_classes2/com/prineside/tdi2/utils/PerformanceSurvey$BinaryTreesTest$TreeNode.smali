.class final Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TreeNode"
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

.field public final b:Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;-><init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->a:Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    iput-object p2, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->b:Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;-><init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)I
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->b()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->a:Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->b()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->b:Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
