.class public final Lv3/v0;
.super Lv3/q;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lv3/q$a;


# direct methods
.method public constructor <init>(Lv3/q$a;[Lt3/d;ZI)V
    .locals 0

    iput-object p1, p0, Lv3/v0;->d:Lv3/q$a;

    invoke-direct {p0, p2, p3, p4}, Lv3/q;-><init>([Lt3/d;ZI)V

    return-void
.end method


# virtual methods
.method public final b(Lu3/a$b;Lj5/j;)V
    .locals 1

    iget-object v0, p0, Lv3/v0;->d:Lv3/q$a;

    invoke-static {v0}, Lv3/q$a;->f(Lv3/q$a;)Lv3/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lv3/m;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
