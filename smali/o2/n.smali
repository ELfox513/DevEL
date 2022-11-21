.class public final synthetic Lo2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Lo2/p;

.field public final synthetic b:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lo2/p;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/n;->a:Lo2/p;

    iput-object p2, p0, Lo2/n;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo2/n;->a:Lo2/p;

    iget-object v1, p0, Lo2/n;->b:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lo2/p;->f(Lo2/p;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
