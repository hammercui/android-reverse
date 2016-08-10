.class public final Lcom/google/android/gms/drive/metadata/internal/c;
.super Ljava/lang/Object;


# static fields
.field private static Ej:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->Ej:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/fs;->El:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Em:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->IS_PINNED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->En:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Eo:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Ep:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Eq:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Er:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Es:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Et:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Eu:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Ev:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Ew:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Ex:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Ey:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->Ez:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->EA:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->EB:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->EC:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fs;->ED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/ft;->EG:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/ft;->EE:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/ft;->EF:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/ft;->EH:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/ft;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fv;->EJ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    sget-object v0, Lcom/google/android/gms/internal/fv;->EK:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->b(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    return-void
.end method

.method public static ar(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->Ej:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/drive/metadata/MetadataField;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->Ej:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field name registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->Ej:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static fg()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->Ej:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
