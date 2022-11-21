.class public final synthetic Lcom/prineside/tdi2/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic d:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(II[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/utils/d;->a:I

    iput p2, p0, Lcom/prineside/tdi2/utils/d;->b:I

    iput-object p3, p0, Lcom/prineside/tdi2/utils/d;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/utils/d;->a:I

    iget v1, p0, Lcom/prineside/tdi2/utils/d;->b:I

    iget-object v2, p0, Lcom/prineside/tdi2/utils/d;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->a(II[Ljava/lang/String;)V

    return-void
.end method
