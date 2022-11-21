.class public final synthetic Lo2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo2/t;


# direct methods
.method public synthetic constructor <init>(Lo2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/r;->a:Lo2/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo2/r;->a:Lo2/t;

    invoke-static {v0}, Lo2/t;->b(Lo2/t;)V

    return-void
.end method
