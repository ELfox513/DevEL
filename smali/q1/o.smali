.class public final Lq1/o;
.super Lq1/n;
.source "SourceFile"

# interfaces
.implements Lq1/g;


# instance fields
.field public final e:Ly1/a;


# direct methods
.method public constructor <init>(Lx1/e0;ILx1/a0;Lq1/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lq1/n;-><init>(Lx1/e0;ILx1/a0;Lq1/b;)V

    invoke-virtual {p0}, Lq1/n;->getDescriptor()Lx1/d0;

    move-result-object p4

    invoke-virtual {p4}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lx1/e0;->x()Ly1/c;

    move-result-object p1

    invoke-static {p2}, Lw1/a;->i(I)Z

    move-result p2

    invoke-virtual {p3}, Lx1/a0;->A()Z

    move-result p3

    invoke-static {p4, p1, p2, p3}, Ly1/a;->u(Ljava/lang/String;Ly1/c;ZZ)Ly1/a;

    move-result-object p1

    iput-object p1, p0, Lq1/o;->e:Ly1/a;

    return-void
.end method


# virtual methods
.method public b()Ly1/a;
    .locals 1

    iget-object v0, p0, Lq1/o;->e:Ly1/a;

    return-object v0
.end method
