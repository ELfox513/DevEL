.class public final Lcom/android/billingclient/api/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/billingclient/api/c;

.field public static final b:Lcom/android/billingclient/api/c;

.field public static final c:Lcom/android/billingclient/api/c;

.field public static final d:Lcom/android/billingclient/api/c;

.field public static final e:Lcom/android/billingclient/api/c;

.field public static final f:Lcom/android/billingclient/api/c;

.field public static final g:Lcom/android/billingclient/api/c;

.field public static final h:Lcom/android/billingclient/api/c;

.field public static final i:Lcom/android/billingclient/api/c;

.field public static final j:Lcom/android/billingclient/api/c;

.field public static final k:Lcom/android/billingclient/api/c;

.field public static final l:Lcom/android/billingclient/api/c;

.field public static final m:Lcom/android/billingclient/api/c;

.field public static final n:Lcom/android/billingclient/api/c;

.field public static final o:Lcom/android/billingclient/api/c;

.field public static final p:Lcom/android/billingclient/api/c;

.field public static final q:Lcom/android/billingclient/api/c;

.field public static final r:Lcom/android/billingclient/api/c;

.field public static final s:Lcom/android/billingclient/api/c;

.field public static final t:Lcom/android/billingclient/api/c;

.field public static final u:Lcom/android/billingclient/api/c;

.field public static final v:Lcom/android/billingclient/api/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v2, "Google Play In-app Billing API version is less than 3"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->a:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v2, "Google Play In-app Billing API version is less than 9"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->b:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v2, "Billing service unavailable on device."

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->c:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Client is already in the process of connecting to billing service."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->d:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v1, "Play Store version installed does not support cross selling products."

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->e:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v1, "The list of SKUs can\'t be empty."

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->f:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v1, "SKU type can\'t be empty."

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->g:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Client does not support extra params."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->h:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Client does not support the feature."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->i:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Client does not support get purchase history."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->j:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Invalid purchase token."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->k:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "An internal error occurred."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->l:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Item is unavailable for purchase."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->m:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "SKU can\'t be null."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->n:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "SKU type can\'t be null."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->o:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->p:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Service connection is disconnected."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Timeout communicating with service."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Client doesn\'t support subscriptions."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->s:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v3, "Client doesn\'t support subscriptions update."

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->t:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v1, "Client doesn\'t support multi-item purchases."

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->u:Lcom/android/billingclient/api/c;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    const-string v1, "Unknown feature"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/k;->v:Lcom/android/billingclient/api/c;

    return-void
.end method
