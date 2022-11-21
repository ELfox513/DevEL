.class public final Ly4/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/c;


# instance fields
.field public final a:Ly4/n;

.field public final b:Ly4/g2;

.field public final c:Ly4/c0;


# direct methods
.method public constructor <init>(Ly4/n;Ly4/g2;Ly4/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/v1;->a:Ly4/n;

    iput-object p2, p0, Ly4/v1;->b:Ly4/g2;

    iput-object p3, p0, Ly4/v1;->c:Ly4/c0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V
    .locals 1

    iget-object v0, p0, Ly4/v1;->b:Ly4/g2;

    invoke-virtual {v0, p1, p2, p3, p4}, Ly4/g2;->c(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Ly4/v1;->a:Ly4/n;

    invoke-virtual {v0}, Ly4/n;->a()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Ly4/v1;->c:Ly4/c0;

    invoke-virtual {v0}, Ly4/c0;->c()Z

    move-result v0

    return v0
.end method
