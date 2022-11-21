.class public final synthetic Lx5/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lx5/e0;


# direct methods
.method public synthetic constructor <init>(Lx5/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/d0;->a:Lx5/e0;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx5/d0;->a:Lx5/e0;

    invoke-static {v0, p1}, Lx5/e0;->a(Lx5/e0;Lj5/i;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
