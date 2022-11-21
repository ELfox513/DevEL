.class public final synthetic Lu5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/a$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lz5/c0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLz5/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu5/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lu5/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Lu5/d;->c:J

    iput-object p5, p0, Lu5/d;->d:Lz5/c0;

    return-void
.end method


# virtual methods
.method public final a(Lq6/b;)V
    .locals 6

    iget-object v0, p0, Lu5/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lu5/d;->b:Ljava/lang/String;

    iget-wide v2, p0, Lu5/d;->c:J

    iget-object v4, p0, Lu5/d;->d:Lz5/c0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lu5/e;->h(Ljava/lang/String;Ljava/lang/String;JLz5/c0;Lq6/b;)V

    return-void
.end method
