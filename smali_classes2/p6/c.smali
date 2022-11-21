.class public final synthetic Lp6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp6/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lp6/d;->c(Landroid/content/Context;)Lp6/g;

    move-result-object v0

    return-object v0
.end method
