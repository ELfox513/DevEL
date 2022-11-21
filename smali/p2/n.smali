.class public final synthetic Lp2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b0$b;


# instance fields
.field public final synthetic a:Lp2/b0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Li2/m;


# direct methods
.method public synthetic constructor <init>(Lp2/b0;Ljava/util/List;Li2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/n;->a:Lp2/b0;

    iput-object p2, p0, Lp2/n;->b:Ljava/util/List;

    iput-object p3, p0, Lp2/n;->c:Li2/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp2/n;->a:Lp2/b0;

    iget-object v1, p0, Lp2/n;->b:Ljava/util/List;

    iget-object v2, p0, Lp2/n;->c:Li2/m;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lp2/b0;->t(Lp2/b0;Ljava/util/List;Li2/m;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
