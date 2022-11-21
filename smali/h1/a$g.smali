.class public final Lh1/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lh1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Ll5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll5/a<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh1/a;Ll5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "TV;>;",
            "Ll5/a<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/a$g;->a:Lh1/a;

    iput-object p2, p0, Lh1/a$g;->b:Ll5/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh1/a$g;->a:Lh1/a;

    iget-object v0, v0, Lh1/a;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh1/a$g;->b:Ll5/a;

    invoke-static {v0}, Lh1/a;->k(Ll5/a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lh1/a;->q:Lh1/a$b;

    iget-object v2, p0, Lh1/a$g;->a:Lh1/a;

    invoke-virtual {v1, v2, p0, v0}, Lh1/a$b;->b(Lh1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh1/a$g;->a:Lh1/a;

    invoke-static {v0}, Lh1/a;->h(Lh1/a;)V

    :cond_1
    return-void
.end method
