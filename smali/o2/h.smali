.class public final synthetic Lo2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo2/p;

.field public final synthetic b:Li2/m;

.field public final synthetic d:I

.field public final synthetic k:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lo2/p;Li2/m;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/h;->a:Lo2/p;

    iput-object p2, p0, Lo2/h;->b:Li2/m;

    iput p3, p0, Lo2/h;->d:I

    iput-object p4, p0, Lo2/h;->k:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo2/h;->a:Lo2/p;

    iget-object v1, p0, Lo2/h;->b:Li2/m;

    iget v2, p0, Lo2/h;->d:I

    iget-object v3, p0, Lo2/h;->k:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lo2/p;->a(Lo2/p;Li2/m;ILjava/lang/Runnable;)V

    return-void
.end method
