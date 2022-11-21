.class public final synthetic Ld6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/h;


# instance fields
.field public final synthetic a:Lj5/j;

.field public final synthetic b:Lx5/o;


# direct methods
.method public synthetic constructor <init>(Lj5/j;Lx5/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/b;->a:Lj5/j;

    iput-object p2, p0, Ld6/b;->b:Lx5/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Ld6/b;->a:Lj5/j;

    iget-object v1, p0, Ld6/b;->b:Lx5/o;

    invoke-static {v0, v1, p1}, Ld6/c;->b(Lj5/j;Lx5/o;Ljava/lang/Exception;)V

    return-void
.end method
