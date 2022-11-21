.class public final synthetic Lo2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$a;


# instance fields
.field public final synthetic a:Lo2/t;


# direct methods
.method public synthetic constructor <init>(Lo2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/s;->a:Lo2/t;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo2/s;->a:Lo2/t;

    invoke-static {v0}, Lo2/t;->a(Lo2/t;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
