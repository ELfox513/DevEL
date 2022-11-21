.class public Ln0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/c$c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final c:Lq0/c$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lq0/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/k;->a:Ljava/lang/String;

    iput-object p2, p0, Ln0/k;->b:Ljava/io/File;

    iput-object p3, p0, Ln0/k;->c:Lq0/c$c;

    return-void
.end method


# virtual methods
.method public a(Lq0/c$b;)Lq0/c;
    .locals 7

    new-instance v6, Ln0/j;

    iget-object v1, p1, Lq0/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Ln0/k;->a:Ljava/lang/String;

    iget-object v3, p0, Ln0/k;->b:Ljava/io/File;

    iget-object v0, p1, Lq0/c$b;->c:Lq0/c$a;

    iget v4, v0, Lq0/c$a;->a:I

    iget-object v0, p0, Ln0/k;->c:Lq0/c$c;

    invoke-interface {v0, p1}, Lq0/c$c;->a(Lq0/c$b;)Lq0/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ln0/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILq0/c;)V

    return-object v6
.end method
