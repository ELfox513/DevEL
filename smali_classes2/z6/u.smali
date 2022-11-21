.class public final synthetic Lz6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz6/v;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lz6/v;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz6/u;->a:Lz6/v;

    iput-object p2, p0, Lz6/u;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz6/u;->a:Lz6/v;

    iget-object v1, p0, Lz6/u;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lz6/v;->a(Lz6/v;Landroid/content/Context;)V

    return-void
.end method
