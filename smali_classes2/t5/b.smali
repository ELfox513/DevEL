.class public final synthetic Lt5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv5/a;


# instance fields
.field public final synthetic a:Lt5/d;


# direct methods
.method public synthetic constructor <init>(Lt5/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/b;->a:Lt5/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lt5/b;->a:Lt5/d;

    invoke-static {v0, p1, p2}, Lt5/d;->b(Lt5/d;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
